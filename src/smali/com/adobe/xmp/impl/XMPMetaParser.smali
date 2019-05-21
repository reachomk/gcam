.class public final Lcom/adobe/xmp/impl/XMPMetaParser;
.super Ljava/lang/Object;
.source "XMPMetaParser.java"


# static fields
.field private static final XMP_RDF:Ljava/lang/Object;

.field private static factory:Ljavax/xml/parsers/DocumentBuilderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/xmp/impl/XMPMetaParser;->XMP_RDF:Ljava/lang/Object;

    .line 50
    invoke-static {}, Lcom/adobe/xmp/impl/XMPMetaParser;->createDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    sput-object v0, Lcom/adobe/xmp/impl/XMPMetaParser;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    return-void
.end method

.method private static createDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 394
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 395
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 396
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    .line 402
    :try_start_0
    const-string v1, "http://javax.xml.XMLConstants/feature/secure-processing"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static findRootNode(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v7, 0x7

    const/4 v2, 0x0

    .line 326
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    move v3, v2

    .line 327
    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v3, v0, :cond_6

    .line 329
    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 330
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v7, v0, :cond_1

    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/ProcessingInstruction;

    .line 331
    invoke-interface {v0}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    const-string v5, "xpacket"

    if-ne v0, v5, :cond_1

    .line 334
    if-eqz p2, :cond_0

    .line 336
    const/4 v0, 0x2

    check-cast v1, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {v1}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    .line 327
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 339
    :cond_1
    const/4 v0, 0x3

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v0, v5, :cond_0

    .line 340
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-eq v7, v0, :cond_0

    .line 342
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    .line 344
    const-string v6, "xmpmeta"

    .line 346
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "xapmeta"

    .line 347
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const-string v6, "adobe:ns:meta/"

    .line 349
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move p1, v2

    move-object p0, v1

    .line 353
    goto :goto_0

    .line 355
    :cond_3
    if-nez p1, :cond_5

    const-string v6, "RDF"

    .line 356
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    .line 357
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 359
    if-eqz p2, :cond_4

    .line 361
    aput-object v1, p2, v2

    .line 362
    const/4 v0, 0x1

    sget-object v1, Lcom/adobe/xmp/impl/XMPMetaParser;->XMP_RDF:Ljava/lang/Object;

    aput-object v1, p2, v0

    .line 383
    :cond_4
    :goto_2
    return-object p2

    .line 369
    :cond_5
    invoke-static {v1, p1, p2}, Lcom/adobe/xmp/impl/XMPMetaParser;->findRootNode(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 370
    if-eqz v0, :cond_0

    move-object p2, v0

    .line 372
    goto :goto_2

    .line 383
    :cond_6
    const/4 p2, 0x0

    goto :goto_2
.end method

.method public static parse(Ljava/lang/Object;Lcom/adobe/xmp/options/ParseOptions;)Lcom/adobe/xmp/XMPMeta;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {p0}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    .line 75
    if-eqz p1, :cond_1

    .line 1126
    :goto_0
    instance-of v0, p0, Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 1128
    check-cast p0, Ljava/io/InputStream;

    invoke-static {p0, p1}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseXmlFromInputStream(Ljava/io/InputStream;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 79
    :goto_1
    invoke-virtual {p1}, Lcom/adobe/xmp/options/ParseOptions;->getRequireXMPMeta()Z

    move-result v1

    .line 80
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 81
    invoke-static {v0, v1, v2}, Lcom/adobe/xmp/impl/XMPMetaParser;->findRootNode(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_4

    const/4 v1, 0x1

    aget-object v1, v0, v1

    sget-object v2, Lcom/adobe/xmp/impl/XMPMetaParser;->XMP_RDF:Ljava/lang/Object;

    if-ne v1, v2, :cond_4

    .line 85
    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lorg/w3c/dom/Node;

    invoke-static {v0}, Lcom/adobe/xmp/impl/ParseRDF;->parse(Lorg/w3c/dom/Node;)Lcom/adobe/xmp/impl/XMPMetaImpl;

    move-result-object v0

    .line 89
    invoke-virtual {p1}, Lcom/adobe/xmp/options/ParseOptions;->getOmitNormalization()Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    invoke-static {v0, p1}, Lcom/adobe/xmp/impl/XMPNormalizer;->process(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/options/ParseOptions;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .line 101
    :cond_0
    :goto_2
    return-object v0

    .line 75
    :cond_1
    new-instance p1, Lcom/adobe/xmp/options/ParseOptions;

    invoke-direct {p1}, Lcom/adobe/xmp/options/ParseOptions;-><init>()V

    goto :goto_0

    .line 1130
    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    .line 1132
    new-instance v0, Lcom/adobe/xmp/impl/ParameterAsserts;

    check-cast p0, [B

    invoke-direct {v0, p0}, Lcom/adobe/xmp/impl/ParameterAsserts;-><init>([B)V

    invoke-static {v0, p1}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseXmlFromBytebuffer$51666RRD5TGM8RR2CKNNGRBG5TKMQS3C5T17IT3589QMCPJ5E8TKOORFDKNM2P3FC9IIUU3DE0NMUS3KD5NMSSPFA1GN4SR59TO78QBFDPPJMAACDTP6EBRN6DHIUP3FDKNK8RR3ELMMARJK7C______(Lcom/adobe/xmp/impl/ParameterAsserts;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_1

    .line 1136
    :cond_3
    check-cast p0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseXmlFromString(Ljava/lang/String;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_1

    .line 101
    :cond_4
    new-instance v0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    goto :goto_2
.end method

.method private static parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 271
    :try_start_0
    sget-object v0, Lcom/adobe/xmp/impl/XMPMetaParser;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 272
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 273
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 275
    :catch_0
    move-exception v0

    .line 277
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "XML parsing failure"

    const/16 v3, 0xc9

    invoke-direct {v1, v2, v3, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1

    .line 279
    :catch_1
    move-exception v0

    .line 281
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "XML Parser not correctly configured"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1

    .line 284
    :catch_2
    move-exception v0

    .line 286
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "Error reading the XML-file"

    const/16 v3, 0xcc

    invoke-direct {v1, v2, v3, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1
.end method

.method private static parseXmlFromBytebuffer$51666RRD5TGM8RR2CKNNGRBG5TKMQS3C5T17IT3589QMCPJ5E8TKOORFDKNM2P3FC9IIUU3DE0NMUS3KD5NMSSPFA1GN4SR59TO78QBFDPPJMAACDTP6EBRN6DHIUP3FDKNK8RR3ELMMARJK7C______(Lcom/adobe/xmp/impl/ParameterAsserts;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/ParameterAsserts;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 189
    :try_start_0
    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    .line 191
    :catch_0
    move-exception v0

    .line 193
    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->getErrorCode()I

    move-result v1

    const/16 v2, 0xc9

    if-eq v1, v2, :cond_0

    .line 194
    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->getErrorCode()I

    move-result v1

    const/16 v2, 0xcc

    if-ne v1, v2, :cond_3

    .line 196
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/xmp/options/ParseOptions;->getAcceptLatin1()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->convert$51666RRD5TGM8RR2CKNNGRBG5TKMQS3C5T17IT3589QMCPJ5E8TIIJ33DTMIUOB4DTH6ABRODLO2UQBDE1M2UGJPEHIK4TB6CPIN4EO_(Lcom/adobe/xmp/impl/ParameterAsserts;)Lcom/adobe/xmp/impl/ParameterAsserts;

    move-result-object p0

    .line 201
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/xmp/options/ParseOptions;->getFixControlChars()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    :try_start_1
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/ParameterAsserts;->getEncoding()Ljava/lang/String;

    move-result-object v1

    .line 206
    new-instance v2, Lcom/adobe/xmp/impl/FixASCIIControlsReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 208
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/ParameterAsserts;->getByteStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/adobe/xmp/impl/FixASCIIControlsReader;-><init>(Ljava/io/Reader;)V

    .line 209
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-static {v1}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 214
    :catch_1
    move-exception v1

    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "Unsupported Encoding"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1

    .line 218
    :cond_2
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/ParameterAsserts;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 219
    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_0

    .line 223
    :cond_3
    throw v0
.end method

.method private static parseXmlFromInputStream(Ljava/io/InputStream;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p1}, Lcom/adobe/xmp/options/ParseOptions;->getAcceptLatin1()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/adobe/xmp/options/ParseOptions;->getFixControlChars()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    .line 162
    :cond_0
    :try_start_0
    new-instance v0, Lcom/adobe/xmp/impl/ParameterAsserts;

    invoke-direct {v0, p0}, Lcom/adobe/xmp/impl/ParameterAsserts;-><init>(Ljava/io/InputStream;)V

    .line 163
    invoke-static {v0, p1}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseXmlFromBytebuffer$51666RRD5TGM8RR2CKNNGRBG5TKMQS3C5T17IT3589QMCPJ5E8TKOORFDKNM2P3FC9IIUU3DE0NMUS3KD5NMSSPFA1GN4SR59TO78QBFDPPJMAACDTP6EBRN6DHIUP3FDKNK8RR3ELMMARJK7C______(Lcom/adobe/xmp/impl/ParameterAsserts;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 167
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "Error reading the XML-file"

    const/16 v3, 0xcc

    invoke-direct {v1, v2, v3, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1
.end method

.method private static parseXmlFromString(Ljava/lang/String;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 241
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 244
    :try_start_0
    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 251
    :goto_0
    return-object v0

    .line 246
    :catch_0
    move-exception v0

    .line 248
    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->getErrorCode()I

    move-result v1

    const/16 v2, 0xc9

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/adobe/xmp/options/ParseOptions;->getFixControlChars()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Lcom/adobe/xmp/impl/FixASCIIControlsReader;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/adobe/xmp/impl/FixASCIIControlsReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 251
    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_0

    .line 255
    :cond_0
    throw v0
.end method
