.class final Lcom/adobe/xmp/XMPMetaFactory$1;
.super Ljava/lang/Object;
.source "XMPMetaFactory.java"

# interfaces
.implements Lcom/adobe/xmp/XMPVersionInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/xmp/XMPMetaFactory;->getVersionInfo()Lcom/adobe/xmp/XMPVersionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    const-string v0, "Adobe XMP Core 5.1.0-jc003"

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    const-string v0, "Adobe XMP Core 5.1.0-jc003"

    return-object v0
.end method
