.class final Lcom/google/android/libraries/smartburst/storage/Metadata$RectFKey;
.super Lcom/google/android/libraries/smartburst/storage/Metadata$Key;
.source "Metadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/storage/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RectFKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/smartburst/storage/Metadata$Key",
        "<",
        "Landroid/graphics/RectF;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/smartburst/storage/Metadata$Key;-><init>(Ljava/lang/String;B)V

    .line 391
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
    .line 388
    .line 1403
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->readRectF(Ljava/io/DataInputStream;)Landroid/graphics/RectF;

    move-result-object v0

    .line 388
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
    .line 395
    instance-of v0, p1, Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 396
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incorrect type for serialization"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_0
    check-cast p1, Landroid/graphics/RectF;

    invoke-static {p1, p2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->writeRectF(Landroid/graphics/RectF;Ljava/io/DataOutputStream;)V

    .line 399
    return-void
.end method
