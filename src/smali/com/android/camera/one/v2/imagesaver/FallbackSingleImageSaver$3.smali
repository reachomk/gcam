.class final Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$3;
.super Ljava/lang/Object;
.source "FallbackSingleImageSaver.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<TTOutput;>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;

.field private synthetic val$futureResult:Lcom/google/common/util/concurrent/SettableFuture;

.field private synthetic val$input:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;Lcom/google/common/util/concurrent/SettableFuture;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$3;->this$0:Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;

    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$3;->val$futureResult:Lcom/google/common/util/concurrent/SettableFuture;

    iput-object p3, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$3;->val$input:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 107
    invoke-static {}, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->access$300()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$3;->this$0:Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;

    invoke-static {v1}, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->access$400$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BQ6C5M6OOJ1CDLL6QBECTM6AIBDC5JMAKR1EPIN4EP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR(Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;)Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x36

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Primary image saver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed, falling back to secondary"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$3;->this$0:Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$3;->val$input:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$3;->val$futureResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {v0, v1, v2}, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->access$500(Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;Ljava/lang/Object;Lcom/google/common/util/concurrent/SettableFuture;)V

    .line 109
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTOutput;)V"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$3;->this$0:Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$3;->val$futureResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {v0, p1, v1}, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->access$200(Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;Ljava/lang/Object;Lcom/google/common/util/concurrent/SettableFuture;)V

    .line 103
    return-void
.end method
