.class final Lcom/android/camera/module/capture/CaptureOneCameraCreator$2;
.super Ljava/lang/Object;
.source "CaptureOneCameraCreator.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/capture/CaptureOneCameraCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/lang/Object;",
        "Lcom/android/camera/one/OneCamera;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/capture/CaptureOneCameraCreator;

.field private synthetic val$metric:Lcom/android/camera/debug/performance/Metric;

.field private synthetic val$oneCamera:Lcom/android/camera/one/OneCamera;

.field private synthetic val$oneCameraStats:Lcom/android/camera/stats/OneCameraSession;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureOneCameraCreator;Lcom/android/camera/stats/OneCameraSession;Lcom/android/camera/debug/performance/Metric;Lcom/android/camera/one/OneCamera;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator$2;->this$0:Lcom/android/camera/module/capture/CaptureOneCameraCreator;

    iput-object p2, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator$2;->val$oneCameraStats:Lcom/android/camera/stats/OneCameraSession;

    iput-object p3, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator$2;->val$metric:Lcom/android/camera/debug/performance/Metric;

    iput-object p4, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator$2;->val$oneCamera:Lcom/android/camera/one/OneCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private apply$5166KOBMC4NMOOBECSNKUOJACLHN8EP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP62EO_()Lcom/android/camera/one/OneCamera;
    .locals 3

    .prologue
    .line 268
    invoke-static {}, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCamera started!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator$2;->this$0:Lcom/android/camera/module/capture/CaptureOneCameraCreator;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->access$200(Lcom/android/camera/module/capture/CaptureOneCameraCreator;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator$2;->this$0:Lcom/android/camera/module/capture/CaptureOneCameraCreator;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->access$302(Lcom/android/camera/module/capture/CaptureOneCameraCreator;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 271
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator$2;->val$oneCameraStats:Lcom/android/camera/stats/OneCameraSession;

    invoke-virtual {v0}, Lcom/android/camera/stats/OneCameraSession;->recordOneCameraStarted()V

    .line 273
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator$2;->val$metric:Lcom/android/camera/debug/performance/Metric;

    invoke-interface {v0}, Lcom/android/camera/debug/performance/Metric;->stop()V

    .line 274
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator$2;->val$oneCamera:Lcom/android/camera/one/OneCamera;

    return-object v0

    .line 271
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/android/camera/module/capture/CaptureOneCameraCreator$2;->apply$5166KOBMC4NMOOBECSNKUOJACLHN8EP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP62EO_()Lcom/android/camera/one/OneCamera;

    move-result-object v0

    return-object v0
.end method
