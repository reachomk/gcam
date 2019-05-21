.class final Lcom/android/camera/activity/main/CameraActivityModule$1;
.super Ljava/lang/Object;
.source "CameraActivityModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/activity/main/CameraActivityModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$cameraActivityLifecycleLoggingBehavior:Lcom/android/camera/activity/main/CameraActivityLifecycleLoggingBehavior;


# direct methods
.method constructor <init>(Lcom/android/camera/activity/main/CameraActivityLifecycleLoggingBehavior;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/camera/activity/main/CameraActivityModule$1;->val$cameraActivityLifecycleLoggingBehavior:Lcom/android/camera/activity/main/CameraActivityLifecycleLoggingBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/activity/main/CameraActivityModule$1;->val$cameraActivityLifecycleLoggingBehavior:Lcom/android/camera/activity/main/CameraActivityLifecycleLoggingBehavior;

    invoke-virtual {v0}, Lcom/android/camera/activity/main/CameraActivityLifecycleLoggingBehavior;->start()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 42
    return-void
.end method
