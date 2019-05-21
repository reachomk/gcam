.class public final Lcom/android/camera/module/videointent/state/StateBackground;
.super Lcom/android/camera/module/videointent/state/VideoIntentState;
.source "StateBackground.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "VidIntStBackground"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/fsm/StateMachine;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/fsm/StateMachine",
            "<",
            "Lcom/android/camera/module/videointent/state/VideoIntentContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/camera/module/videointent/state/VideoIntentState;-><init>(Lcom/android/camera/fsm/StateMachine;)V

    .line 20
    invoke-direct {p0}, Lcom/android/camera/module/videointent/state/StateBackground;->registerEventHandlers()V

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/module/videointent/state/VideoIntentState;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/camera/module/videointent/state/VideoIntentState;-><init>(Lcom/android/camera/fsm/State;)V

    .line 25
    invoke-direct {p0}, Lcom/android/camera/module/videointent/state/StateBackground;->registerEventHandlers()V

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/videointent/state/StateBackground;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateBackground;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method private final registerEventHandlers()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/android/camera/module/videointent/state/StateBackground$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/videointent/state/StateBackground$1;-><init>(Lcom/android/camera/module/videointent/state/StateBackground;)V

    .line 37
    const-class v1, Lcom/android/camera/module/imageintent/event/EventResume;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/videointent/state/StateBackground;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 40
    new-instance v0, Lcom/android/camera/module/videointent/state/StateBackground$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/videointent/state/StateBackground$2;-><init>(Lcom/android/camera/module/videointent/state/StateBackground;)V

    .line 57
    const-class v1, Lcom/android/camera/module/imageintent/event/EventOnSurfaceTextureAvailable;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/videointent/state/StateBackground;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 58
    return-void
.end method
