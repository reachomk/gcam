.class final Lcom/google/android/libraries/smartburst/storage/Metadata$FaceListKey;
.super Lcom/google/android/libraries/smartburst/storage/Metadata$Key;
.source "Metadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/storage/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FaceListKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/smartburst/storage/Metadata$Key",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/vision/face/Face;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/smartburst/storage/Metadata$Key;-><init>(Ljava/lang/String;B)V

    .line 292
    return-void
.end method


# virtual methods
.method public final synthetic deserializeValue(Ljava/io/DataInputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    .line 1308
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readFaceList(Ljava/io/DataInputStream;)Ljava/util/List;

    move-result-object v0

    .line 289
    return-object v0
.end method

.method public final serializeValue(Ljava/lang/Object;Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incorrect type for serialization"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_0
    check-cast p1, Ljava/util/List;

    .line 300
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/vision/face/Face;

    if-nez v0, :cond_1

    .line 301
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incorrect type for serialization"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_1
    invoke-static {p1, p2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->writeFaceList(Ljava/util/List;Ljava/io/DataOutputStream;)V

    .line 304
    return-void
.end method
