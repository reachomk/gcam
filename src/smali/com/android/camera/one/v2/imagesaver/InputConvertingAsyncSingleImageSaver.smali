.class public abstract Lcom/android/camera/one/v2/imagesaver/InputConvertingAsyncSingleImageSaver;
.super Ljava/lang/Object;
.source "InputConvertingAsyncSingleImageSaver.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TOriginalInput:",
        "Ljava/lang/Object;",
        "TConvertedInput:",
        "Ljava/lang/Object;",
        "TOutput:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;"
    }
.end annotation


# instance fields
.field private final imageToProcessImageSaver$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/InputConvertingAsyncSingleImageSaver;->imageToProcessImageSaver$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    .line 23
    return-void
.end method


# virtual methods
.method protected abstract convertInput(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTOriginalInput;)TTConvertedInput;"
        }
    .end annotation
.end method

.method public final maxThroughput()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/InputConvertingAsyncSingleImageSaver;->imageToProcessImageSaver$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;->maxThroughput()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final process(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTOriginalInput;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TTOutput;>;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/InputConvertingAsyncSingleImageSaver;->imageToProcessImageSaver$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/imagesaver/InputConvertingAsyncSingleImageSaver;->convertInput(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;->process(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
