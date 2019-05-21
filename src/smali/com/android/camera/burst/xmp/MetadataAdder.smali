.class public Lcom/android/camera/burst/xmp/MetadataAdder;
.super Ljava/lang/Object;
.source "MetadataAdder.java"


# instance fields
.field private final xmpMeta:Lcom/adobe/xmp/XMPMeta;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Z)V
    .locals 9

    .prologue
    .line 2025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2026
    invoke-static {}, Lcom/android/camera/util/XmpUtil;->createXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/burst/xmp/MetadataAdder;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    .line 2028
    :try_start_0
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    const-string v1, "http://ns.google.com/photos/1.0/creations/"

    const-string v2, "GCreations"

    .line 2029
    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2031
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    const-string v1, "http://ns.google.com/photos/1.0/camera/"

    const-string v2, "GCamera"

    .line 2032
    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2035
    iget-object v0, p0, Lcom/android/camera/burst/xmp/MetadataAdder;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string v1, "http://ns.google.com/photos/1.0/creations/"

    const-string v2, "CameraBurstID"

    .line 2038
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2035
    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2039
    iget-object v0, p0, Lcom/android/camera/burst/xmp/MetadataAdder;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string v1, "http://ns.google.com/photos/1.0/camera/"

    const-string v2, "BurstID"

    .line 2040
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2039
    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2042
    if-eqz p2, :cond_0

    .line 2043
    iget-object v0, p0, Lcom/android/camera/burst/xmp/MetadataAdder;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string v1, "http://ns.google.com/photos/1.0/camera/"

    const-string v2, "BurstPrimary"

    const-string v3, "1"

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2049
    :cond_0
    sget-object v7, Lcom/android/camera/burst/xmp/XmpConstants;->XMP_STACK_EXCLUSION_LIST:[Ljava/lang/String;

    array-length v8, v7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v4, v7, v6

    .line 2050
    iget-object v0, p0, Lcom/android/camera/burst/xmp/MetadataAdder;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string v1, "http://ns.google.com/photos/1.0/camera/"

    const-string v2, "DisableAutoCreation"

    new-instance v3, Lcom/adobe/xmp/options/PropertyOptions;

    const/16 v5, 0x200

    invoke-direct {v3, v5}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    new-instance v5, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v5}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->appendArrayItem(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2049
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 2057
    :catch_0
    move-exception v0

    .line 2058
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2059
    :cond_1
    return-void
.end method


# virtual methods
.method public addAndStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/camera/burst/xmp/MetadataAdder;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    invoke-static {p1, p2, v0}, Lcom/android/camera/burst/xmp/XmpEmbedder;->streamJpegWithMetadataInserted(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;)V

    .line 1070
    return-void
.end method

.method public addAndStream([BLjava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/camera/burst/xmp/MetadataAdder;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    invoke-static {p1, p2, v0}, Lcom/android/camera/burst/xmp/XmpEmbedder;->streamJpegWithMetadataInserted([BLjava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;)V

    .line 1065
    return-void
.end method
