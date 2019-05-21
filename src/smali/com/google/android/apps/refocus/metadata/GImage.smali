.class public final Lcom/google/android/apps/refocus/metadata/GImage;
.super Ljava/lang/Object;
.source "GImage.java"


# instance fields
.field private data:[B

.field private mime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/apps/refocus/metadata/GImage;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/google/android/apps/refocus/metadata/GImage;

    invoke-direct {v0}, Lcom/google/android/apps/refocus/metadata/GImage;-><init>()V

    .line 36
    const-string v1, "image/jpeg"

    iput-object v1, v0, Lcom/google/android/apps/refocus/metadata/GImage;->mime:Ljava/lang/String;

    .line 37
    const/16 v1, 0x55

    invoke-static {p0, v1}, Lcom/google/android/apps/refocus/image/BitmapIO;->toByteArray(Landroid/graphics/Bitmap;I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/refocus/metadata/GImage;->data:[B

    .line 38
    return-object v0
.end method

.method public static fromXMPMeta(Lcom/adobe/xmp/XMPMeta;)Lcom/google/android/apps/refocus/metadata/GImage;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 49
    if-nez p0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-object v0

    .line 53
    :cond_1
    invoke-static {}, Lcom/google/android/apps/refocus/metadata/GImage;->initialize()V

    .line 55
    const-string v1, "http://ns.google.com/photos/1.0/image/"

    const-string v2, "Mime"

    invoke-interface {p0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "http://ns.google.com/photos/1.0/image/"

    const-string v2, "Data"

    .line 56
    invoke-interface {p0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    new-instance v1, Lcom/google/android/apps/refocus/metadata/GImage;

    invoke-direct {v1}, Lcom/google/android/apps/refocus/metadata/GImage;-><init>()V

    .line 64
    :try_start_0
    const-string v2, "http://ns.google.com/photos/1.0/image/"

    const-string v3, "Mime"

    invoke-interface {p0, v2, v3}, Lcom/adobe/xmp/XMPMeta;->getPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/apps/refocus/metadata/GImage;->mime:Ljava/lang/String;

    .line 65
    const-string v2, "image/png"

    iget-object v3, v1, Lcom/google/android/apps/refocus/metadata/GImage;->mime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "image/jpeg"

    iget-object v3, v1, Lcom/google/android/apps/refocus/metadata/GImage;->mime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    :cond_2
    const-string v2, "http://ns.google.com/photos/1.0/image/"

    const-string v3, "Data"

    invoke-interface {p0, v2, v3}, Lcom/adobe/xmp/XMPMeta;->getPropertyBase64(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/apps/refocus/metadata/GImage;->data:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 70
    goto :goto_0

    .line 71
    :catch_0
    move-exception v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static initialize()V
    .locals 3

    .prologue
    .line 111
    :try_start_0
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    const-string v1, "http://ns.google.com/photos/1.0/image/"

    const-string v2, "GImage"

    .line 112
    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final toBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/apps/refocus/metadata/GImage;->data:[B

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/refocus/metadata/GImage;->data:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/apps/refocus/metadata/GImage;->data:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public final toXMPMeta(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/XMPMeta;)V
    .locals 3

    .prologue
    .line 96
    invoke-static {}, Lcom/google/android/apps/refocus/metadata/GImage;->initialize()V

    .line 98
    :try_start_0
    const-string v0, "http://ns.google.com/photos/1.0/image/"

    const-string v1, "Mime"

    const-string v2, "image/jpeg"

    invoke-interface {p1, v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    const-string v0, "http://ns.google.com/photos/1.0/image/"

    const-string v1, "Data"

    iget-object v2, p0, Lcom/google/android/apps/refocus/metadata/GImage;->data:[B

    invoke-interface {p2, v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->setPropertyBase64(Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    goto :goto_0
.end method
