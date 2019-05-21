.class public final Lcom/adobe/xmp/XMPMetaFactory;
.super Ljava/lang/Object;
.source "XMPMetaFactory.java"


# static fields
.field private static schema:Lcom/adobe/xmp/XMPSchemaRegistry;

.field private static versionInfo:Lcom/adobe/xmp/XMPVersionInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    invoke-direct {v0}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;-><init>()V

    sput-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/xmp/XMPMetaFactory;->versionInfo:Lcom/adobe/xmp/XMPVersionInfo;

    return-void
.end method

.method public static create()Lcom/adobe/xmp/XMPMeta;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    return-object v0
.end method

.method public static getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    return-object v0
.end method

.method public static declared-synchronized getVersionInfo()Lcom/adobe/xmp/XMPVersionInfo;
    .locals 3

    .prologue
    .line 259
    const-class v1, Lcom/adobe/xmp/XMPMetaFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/adobe/xmp/XMPMetaFactory;->versionInfo:Lcom/adobe/xmp/XMPVersionInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 273
    :try_start_1
    new-instance v0, Lcom/adobe/xmp/XMPMetaFactory$1;

    invoke-direct {v0}, Lcom/adobe/xmp/XMPMetaFactory$1;-><init>()V

    sput-object v0, Lcom/adobe/xmp/XMPMetaFactory;->versionInfo:Lcom/adobe/xmp/XMPVersionInfo;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/adobe/xmp/XMPMetaFactory;->versionInfo:Lcom/adobe/xmp/XMPVersionInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    .line 312
    :catch_0
    move-exception v0

    .line 315
    :try_start_3
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFromBuffer([B)Lcom/adobe/xmp/XMPMeta;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 144
    .line 1160
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/adobe/xmp/impl/XMPMetaParser;->parse(Ljava/lang/Object;Lcom/adobe/xmp/options/ParseOptions;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .line 144
    return-object v0
.end method

.method public static serializeToBuffer(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/options/SerializeOptions;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 205
    .line 1232
    instance-of v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    if-nez v0, :cond_0

    .line 1234
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The serializing service works onlywith the XMPMeta implementation of this library"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    check-cast p0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-static {p0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->serializeToBuffer(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/options/SerializeOptions;)[B

    move-result-object v0

    return-object v0
.end method
