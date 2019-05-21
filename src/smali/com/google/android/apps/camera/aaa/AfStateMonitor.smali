.class public Lcom/google/android/apps/camera/aaa/AfStateMonitor;
.super Ljava/lang/Object;
.source "AfStateMonitor.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/camera/aaa/AfStateMonitor$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Updatable",
        "<",
        "Lcom/google/android/apps/camera/aaa/AfState;",
        ">;"
    }
.end annotation


# instance fields
.field private final afStateTransition:Lcom/google/android/apps/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Lcom/google/android/apps/camera/aaa/AfStateTransition;",
            ">;"
        }
    .end annotation
.end field

.field private lastAfState:Lcom/google/android/apps/camera/aaa/AfState;

.field private listener:Lcom/google/android/apps/camera/aaa/AfStateMonitor$Listener;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 2027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2014
    new-instance v0, Lcom/google/android/apps/camera/async/ConcurrentState;

    new-instance v1, Lcom/google/android/apps/camera/aaa/AfStateTransition;

    .line 2016
    invoke-static {}, Lcom/google/android/apps/camera/aaa/AfState;->inactiveState()Lcom/google/android/apps/camera/aaa/AfState;

    move-result-object v2

    invoke-static {}, Lcom/google/android/apps/camera/aaa/AfState;->inactiveState()Lcom/google/android/apps/camera/aaa/AfState;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/camera/aaa/AfStateTransition;-><init>(Lcom/google/android/apps/camera/aaa/AfState;Lcom/google/android/apps/camera/aaa/AfState;)V

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/apps/camera/aaa/AfStateMonitor;->afStateTransition:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 2021
    invoke-static {}, Lcom/google/android/apps/camera/aaa/AfState;->inactiveState()Lcom/google/android/apps/camera/aaa/AfState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/aaa/AfStateMonitor;->lastAfState:Lcom/google/android/apps/camera/aaa/AfState;

    .line 2028
    return-void
.end method


# virtual methods
.method public getAfStateTransition()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/android/apps/camera/aaa/AfStateTransition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/google/android/apps/camera/aaa/AfStateMonitor;->afStateTransition:Lcom/google/android/apps/camera/async/ConcurrentState;

    return-object v0
.end method

.method public setListener(Lcom/google/android/apps/camera/aaa/AfStateMonitor$Listener;)V
    .locals 0

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/google/android/apps/camera/aaa/AfStateMonitor;->listener:Lcom/google/android/apps/camera/aaa/AfStateMonitor$Listener;

    .line 1038
    return-void
.end method

.method public update(Lcom/google/android/apps/camera/aaa/AfState;)V
    .locals 3

    .prologue
    .line 2042
    iget-boolean v0, p1, Lcom/google/android/apps/camera/aaa/AfState;->isSceneChangeDetected:Z

    iget-object v1, p0, Lcom/google/android/apps/camera/aaa/AfStateMonitor;->lastAfState:Lcom/google/android/apps/camera/aaa/AfState;

    iget-boolean v1, v1, Lcom/google/android/apps/camera/aaa/AfState;->isSceneChangeDetected:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/google/android/apps/camera/aaa/AfState;->isSceneChangeDetected:Z

    if-eqz v0, :cond_0

    .line 2044
    iget-object v0, p0, Lcom/google/android/apps/camera/aaa/AfStateMonitor;->listener:Lcom/google/android/apps/camera/aaa/AfStateMonitor$Listener;

    if-eqz v0, :cond_0

    .line 2045
    iget-object v0, p0, Lcom/google/android/apps/camera/aaa/AfStateMonitor;->listener:Lcom/google/android/apps/camera/aaa/AfStateMonitor$Listener;

    invoke-interface {v0}, Lcom/google/android/apps/camera/aaa/AfStateMonitor$Listener;->onSceneChanged()V

    .line 2049
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/aaa/AfStateMonitor;->lastAfState:Lcom/google/android/apps/camera/aaa/AfState;

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/aaa/AfState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2050
    iget-object v0, p0, Lcom/google/android/apps/camera/aaa/AfStateMonitor;->afStateTransition:Lcom/google/android/apps/camera/async/ConcurrentState;

    new-instance v1, Lcom/google/android/apps/camera/aaa/AfStateTransition;

    iget-object v2, p0, Lcom/google/android/apps/camera/aaa/AfStateMonitor;->lastAfState:Lcom/google/android/apps/camera/aaa/AfState;

    invoke-direct {v1, v2, p1}, Lcom/google/android/apps/camera/aaa/AfStateTransition;-><init>(Lcom/google/android/apps/camera/aaa/AfState;Lcom/google/android/apps/camera/aaa/AfState;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 2051
    iput-object p1, p0, Lcom/google/android/apps/camera/aaa/AfStateMonitor;->lastAfState:Lcom/google/android/apps/camera/aaa/AfState;

    .line 2053
    :cond_1
    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3012
    check-cast p1, Lcom/google/android/apps/camera/aaa/AfState;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/aaa/AfStateMonitor;->update(Lcom/google/android/apps/camera/aaa/AfState;)V

    return-void
.end method
