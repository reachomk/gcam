.class public Lcom/android/camera/fsm/AbstractState;
.super Ljava/lang/Object;
.source "AbstractState.java"

# interfaces
.implements Lcom/android/camera/fsm/State;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/google/android/apps/camera/async/SafeCloseable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/fsm/State",
        "<TC;>;"
    }
.end annotation


# static fields
.field private static NO_CHANGE:Lcom/android/camera/fsm/State;


# instance fields
.field private final eventHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lcom/android/camera/fsm/EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final stateMachine:Lcom/android/camera/fsm/StateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/fsm/StateMachine",
            "<TC;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/fsm/AbstractState;->NO_CHANGE:Lcom/android/camera/fsm/State;

    return-void
.end method

.method protected constructor <init>(Lcom/android/camera/fsm/State;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/fsm/State",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-interface {p1}, Lcom/android/camera/fsm/State;->getStateMachine()Lcom/android/camera/fsm/StateMachine;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/fsm/AbstractState;-><init>(Lcom/android/camera/fsm/StateMachine;)V

    .line 28
    return-void
.end method

.method protected constructor <init>(Lcom/android/camera/fsm/StateMachine;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/fsm/StateMachine",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/camera/fsm/AbstractState;->stateMachine:Lcom/android/camera/fsm/StateMachine;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fsm/AbstractState;->eventHandlerMap:Ljava/util/Map;

    .line 24
    return-void
.end method


# virtual methods
.method public getEventHandler(Ljava/lang/Class;)Lcom/android/camera/fsm/EventHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lcom/android/camera/fsm/EventHandler",
            "<TE;TC;>;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/fsm/AbstractState;->eventHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fsm/EventHandler;

    return-object v0
.end method

.method protected final getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/fsm/AbstractState;->stateMachine:Lcom/android/camera/fsm/StateMachine;

    invoke-interface {v0}, Lcom/android/camera/fsm/StateMachine;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method public final getStateMachine()Lcom/android/camera/fsm/StateMachine;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/fsm/StateMachine",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/fsm/AbstractState;->stateMachine:Lcom/android/camera/fsm/StateMachine;

    return-object v0
.end method

.method public onEnter()Lcom/android/camera/fsm/State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/fsm/State",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public onLeave()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public final removeEventHandler(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/fsm/AbstractState;->eventHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public final setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Lcom/android/camera/fsm/EventHandler",
            "<TE;TC;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/fsm/AbstractState;->eventHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method
