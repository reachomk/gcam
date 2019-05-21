.class final Lcom/android/camera/app/CameraActivityControllerImpl$22;
.super Ljava/lang/Object;
.source "CameraActivityControllerImpl.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/CameraActivityControllerImpl;->openModule(Lcom/android/camera/module/ModuleController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Updatable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

.field private synthetic val$closeable:Ljava/util/concurrent/atomic/AtomicReference;

.field private synthetic val$newMode:I


# direct methods
.method constructor <init>(Lcom/android/camera/app/CameraActivityControllerImpl;ILjava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .prologue
    .line 2998
    iput-object p1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$22;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    iput p2, p0, Lcom/android/camera/app/CameraActivityControllerImpl$22;->val$newMode:I

    iput-object p3, p0, Lcom/android/camera/app/CameraActivityControllerImpl$22;->val$closeable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 2998
    check-cast p1, Ljava/lang/Boolean;

    .line 4003
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4004
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$22;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$6800(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/stats/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/Instrumentation;->modeSwitch()Lcom/android/camera/stats/InstrumentationSessionRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/InstrumentationSessionRecorder;->getCurrentSession()Lcom/android/camera/stats/InstrumentationSession;

    move-result-object v0

    check-cast v0, Lcom/android/camera/stats/ModeSwitchSession;

    invoke-virtual {v0}, Lcom/android/camera/stats/ModeSwitchSession;->recordModeSwitchEnd()V

    .line 4005
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl$22;->val$newMode:I

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$22;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    .line 4009
    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$6800(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/stats/Instrumentation;

    move-result-object v0

    .line 4010
    invoke-virtual {v0}, Lcom/android/camera/stats/Instrumentation;->modeSwitch()Lcom/android/camera/stats/InstrumentationSessionRecorder;

    move-result-object v0

    .line 4011
    invoke-virtual {v0}, Lcom/android/camera/stats/InstrumentationSessionRecorder;->getCurrentSession()Lcom/android/camera/stats/InstrumentationSession;

    move-result-object v0

    check-cast v0, Lcom/android/camera/stats/ModeSwitchSession;

    .line 4012
    invoke-virtual {v0}, Lcom/android/camera/stats/ModeSwitchSession;->getModeSwitchStartNs()J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$22;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    .line 4013
    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$6800(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/stats/Instrumentation;

    move-result-object v0

    .line 4014
    invoke-virtual {v0}, Lcom/android/camera/stats/Instrumentation;->modeSwitch()Lcom/android/camera/stats/InstrumentationSessionRecorder;

    move-result-object v0

    .line 4015
    invoke-virtual {v0}, Lcom/android/camera/stats/InstrumentationSessionRecorder;->getCurrentSession()Lcom/android/camera/stats/InstrumentationSession;

    move-result-object v0

    check-cast v0, Lcom/android/camera/stats/ModeSwitchSession;

    .line 4016
    invoke-virtual {v0}, Lcom/android/camera/stats/ModeSwitchSession;->getModeSwitchEndNs()J

    move-result-wide v6

    .line 4006
    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/stats/UsageStatistics;->changeScreen(IIJJ)V

    .line 4018
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$22;->val$closeable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4019
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$22;->val$closeable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/SafeCloseable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 2998
    :cond_0
    return-void
.end method
