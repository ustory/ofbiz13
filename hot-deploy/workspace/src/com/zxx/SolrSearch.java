package com.zxx;

import java.io.IOException;
import java.util.Map;

import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.impl.HttpSolrServer;
import org.apache.solr.client.solrj.util.ClientUtils;
import org.apache.solr.common.SolrDocument;
import org.ofbiz.base.util.Debug;
import org.ofbiz.base.util.UtilProperties;
import org.ofbiz.base.util.UtilValidate;
import org.ofbiz.entity.Delegator;
import org.ofbiz.service.DispatchContext;
import org.ofbiz.service.ServiceUtil;

public class SolrSearch {

	public static final String module = SolrSearch.class.getName();
	
	public static Map<String, Object> indexProduct(DispatchContext dctx, Map<String, Object> context){
		Delegator delegator = dctx.getDelegator();
        String productId = (String) context.get("productId");
 
        // collection1 below is the name of the core we have defined in solr
        String solrHost = getSolrHost(delegator, "collection1");
 
        HttpSolrServer server = new HttpSolrServer(solrHost);
        SolrDocument solrDocument = new SolrDocument();
        solrDocument.addField("id", productId);
        solrDocument.addField("productId", productId);
        solrDocument.addField("productName", context.get("productName"));
        solrDocument.addField("brandName", context.get("brandName"));
        solrDocument.addField("internalName", context.get("internalName"));
        solrDocument.addField("proDescription", context.get("description"));
        try {
            server.add(ClientUtils.toSolrInputDocument(solrDocument));
            server.commit();
        } catch (SolrServerException e) {
        	Debug.logError(e.toString(), module);
        } catch (IOException e) {
        	Debug.logError(e.toString(), module);
        }
        return ServiceUtil.returnSuccess();
	}
	
    public static String getSolrHost(Delegator delegator, String indexName) {
        String solrHost = UtilProperties.getPropertyValue("Search", "solr.host");
        if (UtilValidate.isNotEmpty(solrHost)) {
            solrHost += "/" + indexName;
        }
        return solrHost;
    }
}
