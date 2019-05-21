.class final Lcom/android/camera/util/activity/ScreenOnControllerImpl$2;
.super Ljava/lang/Object;
.source "ScreenOnControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/util/activity/ScreenOnControllerImpl;-><init>(Lcom/google/android/apps/camera/async/MainThread;Landroid/view/Window;Ljava/util/concurrent/ScheduledExecutorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/util/activity/ScreenOnControllerImpl;

.field private synthetic val$removeKeepScreenOnFlagRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/camera/util/activity/ScreenOnControllerImpl;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/camera/util/activity/ScreenOnControllerImpl$2;->this$0:Lcom/android/camera/util/activity/ScreenOnControllerImpl;

    iput-object p2, p0, Lcom/android/camera/util/activity/ScreenOnControllerImpl$2;->val$removeKeepScreenOnFlagRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/util/activity/ScreenOnControllerImpl$2;->this$0:Lcom/android/camera/util/activity/ScreenOnControllerImpl;

    invoke-static {v0}, Lcom/android/camera/util/activity/ScreenOnControllerImpl;->access$200(Lcom/android/camera/util/activity/ScreenOnControllerImpl;)Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/util/activity/ScreenOnControllerImpl$2;->val$removeKeepScreenOnFlagRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 79
    return-void
.end method
