.class final Lcom/google/android/libraries/smartburst/storage/Metadata$SizeKey;
.super Lcom/google/android/libraries/smartburst/storage/Metadata$Key;
.source "Metadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/storage/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SizeKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/smartburst/storage/Metadata$Key",
        "<",
        "Lcom/google/android/libraries/smartburst/utils/Size;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/smartburst/storage/Metadata$Key;-><init>(Ljava/lang/String;B)V

    .line 410
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
    .line 407
    .line 1422
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readSize(Ljava/io/DataInputStream;)Lcom/google/android/libraries/smartburst/utils/Size;

    move-result-object v0

    .line 407
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
    .line 414
    instance-of v0, p1, Lcom/google/android/libraries/smartburst/utils/Size;

    if-nez v0, :cond_0

    .line 415
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incorrect type for serialization"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_0
    check-cast p1, Lcom/google/android/libraries/smartburst/utils/Size;

    invoke-static {p1, p2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->writeSize(Lcom/google/android/libraries/smartburst/utils/Size;Ljava/io/DataOutputStream;)V

    .line 418
    return-void
.end method
