FROM couchdb:3.3.2 
EXPOSE 5984 
 
ENV COUCHDB_USER=admin 
ENV COUCHDB_PASSWORD=your_secure_password 
ENV COUCHDB_BIND_ADDRESS=0.0.0.0 
ENV COUCHDB_SECRET=your_secret_here 
ENV NODENAME=couchdb@127.0.0.1 
 
# Copy local.ini for CORS configuration 
COPY local.ini /opt/couchdb/etc/local.d/local.ini 
 
# Set permissions 
RUN chown -R couchdb:couchdb /opt/couchdb/etc/local.d/ 
