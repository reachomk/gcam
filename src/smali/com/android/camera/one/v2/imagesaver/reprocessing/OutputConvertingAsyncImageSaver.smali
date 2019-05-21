.class public Lcom/android/camera/one/v2/imagesaver/reprocessing/OutputConvertingAsyncImageSaver;
.super Ljava/lang/Object;
.source "OutputConvertingAsyncImageSaver.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TInput:",
        "Ljava/lang/Object;",
        "TOriginalOutput:",
        "Ljava/lang/Object;",
        "TConvertedOutput:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;"
    }
.end annotation


# instance fields
.field private final conversionFunction:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<TTOriginalOutput;TTConvertedOutput;>;"
        }
    .end annotation
.end field

.field private final wrappedImageSaver$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1020
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingToJpegEncodingResultImageSaver$ConvertImageToJpegEncodingResultFunction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingToJpegEncodingResultImageSaver$ConvertImageToJpegEncodingResultFunction;-><init>(B)V

    invoke-direct {p0, p1, v0}, Lcom/android/camera/one/v2/imagesaver/reprocessing/OutputConvertingAsyncImageSaver;-><init>(Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;Lcom/google/common/base/Function;)V

    .line 1021
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;Lcom/google/common/base/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;",
            "Lcom/google/common/base/Function",
            "<TTOriginalOutput;TTConvertedOutput;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/OutputConvertingAsyncImageSaver;->wrappedImageSaver$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    .line 29
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/OutputConvertingAsyncImageSaver;->conversionFunction:Lcom/google/common/base/Function;

    .line 30
    return-void
.end method


# virtual methods
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
    .line 41
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/OutputConvertingAsyncImageSaver;->wrappedImageSaver$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;->maxThroughput()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final process(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTInput;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TTConvertedOutput;>;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/OutputConvertingAsyncImageSaver;->wrappedImageSaver$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    .line 48
    invoke-interface {v0, p1}, Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;->process(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/reprocessing/OutputConvertingAsyncImageSaver;->conversionFunction:Lcom/google/common/base/Function;

    .line 47
    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
