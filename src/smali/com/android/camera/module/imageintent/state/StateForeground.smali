.class public final Lcom/android/camera/module/imageintent/state/StateForeground;
.super Lcom/android/camera/module/imageintent/state/ImageIntentState;
.source "StateForeground.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/module/imageintent/state/ImageIntentState;)V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/camera/module/imageintent/state/ImageIntentState;-><init>(Lcom/android/camera/fsm/State;)V

    .line 1020
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateForeground$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateForeground$1;-><init>(Lcom/android/camera/module/imageintent/state/StateForeground;)V

    .line 1027
    const-class v1, Lcom/android/camera/module/imageintent/event/EventPause;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/imageintent/state/StateForeground;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1030
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateForeground$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateForeground$2;-><init>(Lcom/android/camera/module/imageintent/state/StateForeground;)V

    .line 1047
    const-class v1, Lcom/android/camera/module/imageintent/event/EventOnSurfaceTextureAvailable;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/imageintent/state/StateForeground;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 16
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/imageintent/state/StateForeground;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateForeground;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method
