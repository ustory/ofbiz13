import org.apache.solr.client.solrj.impl.HttpSolrServer;
import org.apache.solr.common.SolrDocumentList;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.response.QueryResponse;
 
import org.ofbiz.entity.util.EntityUtil;
import com.zxx.SolrSearch;
HttpSolrServer server = new HttpSolrServer(SolrSearch.getSolrHost(delegator, "collection1"));
SolrQuery query = new SolrQuery();
 
keyword = parameters.keyword?.trim() ?: "*";
query.set("q", keyword);
QueryResponse rsp = server.query(query);
SolrDocumentList docs = rsp.getResults();
context.searchResult = docs