.class public Lcom/android/camera/module/imageintent/state/ImageIntentState;
.super Lcom/android/camera/fsm/AbstractState;
.source "ImageIntentState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/fsm/AbstractState",
        "<",
        "Lcom/android/camera/module/imageintent/state/ImageIntentContext;",
        ">;"
    }
.end annotation


# static fields
.field public static NO_CHANGE:Lcom/android/camera/module/imageintent/state/ImageIntentState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/module/imageintent/state/ImageIntentState;->NO_CHANGE:Lcom/android/camera/module/imageintent/state/ImageIntentState;

    return-void
.end method

.method protected constructor <init>(Lcom/android/camera/fsm/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/fsm/State",
            "<",
            "Lcom/android/camera/module/imageintent/state/ImageIntentContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/camera/fsm/AbstractState;-><init>(Lcom/android/camera/fsm/State;)V

    .line 22
    return-void
.end method

.method protected constructor <init>(Lcom/android/camera/fsm/StateMachine;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/fsm/StateMachine",
            "<",
            "Lcom/android/camera/module/imageintent/state/ImageIntentContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/camera/fsm/AbstractState;-><init>(Lcom/android/camera/fsm/StateMachine;)V

    .line 18
    return-void
.end method


# virtual methods
.method public final synthetic getEventHandler(Ljava/lang/Class;)Lcom/android/camera/fsm/EventHandler;
    .locals 1

    .prologue
    .line 12
    .line 1033
    invoke-super {p0, p1}, Lcom/android/camera/fsm/AbstractState;->getEventHandler(Ljava/lang/Class;)Lcom/android/camera/fsm/EventHandler;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 12
    return-object v0
.end method

.method public bridge synthetic onEnter()Lcom/android/camera/fsm/State;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/ImageIntentState;->onEnter()Lcom/android/camera/module/imageintent/state/ImageIntentState;

    move-result-object v0

    return-object v0
.end method

.method public onEnter()Lcom/android/camera/module/imageintent/state/ImageIntentState;
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method
