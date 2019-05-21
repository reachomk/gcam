.class final Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracerImpl$2;
.super Ljava/lang/Object;
.source "ImageSaverTracerImpl.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Futures2$Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Futures2$Function2",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
        ">;",
        "Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracerImpl;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracerImpl$2;->this$0:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 94
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    .line 1099
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracerImpl$2;->this$0:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracerImpl;

    .line 1100
    invoke-static {v1}, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracerImpl;->access$200(Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracerImpl;)Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;-><init>(Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;Ljava/util/List;Ljava/util/List;)V

    .line 94
    return-object v0
.end method
