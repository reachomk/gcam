.class public final Lcom/android/camera/module/imageintent/state/StateFatal;
.super Lcom/android/camera/module/imageintent/state/ImageIntentState;
.source "StateFatal.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/module/imageintent/state/ImageIntentState;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/android/camera/module/imageintent/state/ImageIntentState;-><init>(Lcom/android/camera/fsm/State;)V

    .line 10
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/imageintent/state/StateFatal;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateFatal;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic onEnter()Lcom/android/camera/fsm/State;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateFatal;->onEnter()Lcom/android/camera/module/imageintent/state/ImageIntentState;

    move-result-object v0

    return-object v0
.end method

.method public final onEnter()Lcom/android/camera/module/imageintent/state/ImageIntentState;
    .locals 2

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateFatal;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    .line 15
    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getMainThread()Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/imageintent/state/StateFatal$1;

    invoke-direct {v1, p0}, Lcom/android/camera/module/imageintent/state/StateFatal$1;-><init>(Lcom/android/camera/module/imageintent/state/StateFatal;)V

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method
