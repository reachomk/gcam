.class public Lcom/android/camera/module/videointent/state/VideoIntentState;
.super Lcom/android/camera/fsm/AbstractState;
.source "VideoIntentState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/fsm/AbstractState",
        "<",
        "Lcom/android/camera/module/videointent/state/VideoIntentContext;",
        ">;"
    }
.end annotation


# static fields
.field public static NO_CHANGE:Lcom/android/camera/module/videointent/state/VideoIntentState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/module/videointent/state/VideoIntentState;->NO_CHANGE:Lcom/android/camera/module/videointent/state/VideoIntentState;

    return-void
.end method

.method protected constructor <init>(Lcom/android/camera/fsm/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/fsm/State",
            "<",
            "Lcom/android/camera/module/videointent/state/VideoIntentContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/camera/fsm/AbstractState;-><init>(Lcom/android/camera/fsm/State;)V

    .line 24
    return-void
.end method

.method protected constructor <init>(Lcom/android/camera/fsm/StateMachine;)V
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
    invoke-direct {p0, p1}, Lcom/android/camera/fsm/AbstractState;-><init>(Lcom/android/camera/fsm/StateMachine;)V

    .line 20
    return-void
.end method


# virtual methods
.method public final synthetic getEventHandler(Ljava/lang/Class;)Lcom/android/camera/fsm/EventHandler;
    .locals 1

    .prologue
    .line 14
    .line 1035
    invoke-super {p0, p1}, Lcom/android/camera/fsm/AbstractState;->getEventHandler(Ljava/lang/Class;)Lcom/android/camera/fsm/EventHandler;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 14
    return-object v0
.end method

.method public bridge synthetic onEnter()Lcom/android/camera/fsm/State;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/VideoIntentState;->onEnter()Lcom/android/camera/module/videointent/state/VideoIntentState;

    move-result-object v0

    return-object v0
.end method

.method public onEnter()Lcom/android/camera/module/videointent/state/VideoIntentState;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method
