.class final Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifact$WriteGifFunction;
.super Lcom/google/android/libraries/smartburst/utils/VoidFunction;
.source "GifArtifact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WriteGifFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/smartburst/utils/VoidFunction",
        "<",
        "Ljava/util/List",
        "<[B>;>;"
    }
.end annotation


# instance fields
.field private final mEncoder:Lcom/google/android/libraries/smartburst/artifacts/gifutils/GifEncoder;

.field private final mOutputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/artifacts/gifutils/GifEncoder;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/utils/VoidFunction;-><init>()V

    .line 404
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifact$WriteGifFunction;->mEncoder:Lcom/google/android/libraries/smartburst/artifacts/gifutils/GifEncoder;

    .line 405
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifact$WriteGifFunction;->mOutputStream:Ljava/io/OutputStream;

    .line 406
    return-void
.end method


# virtual methods
.method public final synthetic process(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 399
    check-cast p1, Ljava/util/List;

    .line 1410
    :try_start_0
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifact$WriteGifFunction;->mOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 2097
    :try_start_1
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2098
    invoke-static {v3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2100
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 2101
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 2102
    if-eqz v0, :cond_0

    .line 2103
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 2100
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 2105
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x22

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Encoded frame "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is null."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1410
    :catch_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1412
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    if-eqz v3, :cond_1

    if-eqz v1, :cond_4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_2
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    .line 1413
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not encode GIF data"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2108
    :cond_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1412
    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 1414
    :cond_3
    return-void

    .line 1412
    :catch_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method
