.class final Lcom/android/camera/burst/BurstControllerImpl$1;
.super Ljava/lang/Object;
.source "BurstControllerImpl.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/BurstControllerImpl;-><init>(Landroid/content/Context;Lcom/google/android/libraries/smartburst/integration/BurstMode;Lcom/google/common/util/concurrent/ListenableFuture;Landroid/graphics/SurfaceTexture;Lcom/android/camera/burst/BurstLivePreviewController;Lcom/android/camera/burst/BurstController$ImageStreamProperties;Lcom/android/camera/burst/BurstResultsListener;Lcom/android/camera/session/StackableSession;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/processing/ProcessingServiceManager;Lcom/android/camera/stats/SmartBurstMetaData;ZLcom/android/camera/storage/Storage;Lcom/android/camera/debug/trace/Trace;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/BurstControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/BurstControllerImpl;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/camera/burst/BurstControllerImpl$1;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 272
    invoke-static {}, Lcom/android/camera/burst/BurstControllerImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Session storage directory creation failed."

    invoke-static {v0, v1, p1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 262
    check-cast p1, Ljava/io/File;

    .line 1265
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl$1;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    invoke-static {v0}, Lcom/android/camera/burst/BurstControllerImpl;->access$000(Lcom/android/camera/burst/BurstControllerImpl;)Lcom/android/camera/stats/SmartBurstMetaData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/stats/SmartBurstMetaData;->setSessionDirectory(Ljava/io/File;)V

    .line 262
    return-void
.end method
