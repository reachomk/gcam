.class public final Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
.super Ljava/lang/Object;
.source "SuperStateImpl.java"

# interfaces
.implements Lcom/google/android/apps/camera/statecharts/State;
.implements Lcom/google/android/apps/camera/statecharts/internal/base/SuperState;


# instance fields
.field private final nestedStates:[Lcom/google/android/apps/camera/statecharts/State;

.field private final state:Lcom/google/android/apps/camera/statecharts/State;


# direct methods
.method public varargs constructor <init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->state:Lcom/google/android/apps/camera/statecharts/State;

    .line 23
    iput-object p2, p0, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->nestedStates:[Lcom/google/android/apps/camera/statecharts/State;

    .line 24
    return-void
.end method


# virtual methods
.method public final accept(Lcom/google/android/apps/camera/statecharts/StateVisitor;)V
    .locals 0

    .prologue
    .line 59
    invoke-virtual {p1, p0}, Lcom/google/android/apps/camera/statecharts/StateVisitor;->visitSuperState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperState;)V

    .line 60
    return-void
.end method

.method public final clearHistory()V
    .locals 4

    .prologue
    .line 44
    .line 1054
    iget-object v0, p0, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->state:Lcom/google/android/apps/camera/statecharts/State;

    .line 44
    invoke-static {v0}, Lcom/google/android/apps/camera/statecharts/History;->clearHistory(Lcom/google/android/apps/camera/statecharts/State;)V

    .line 45
    iget-object v1, p0, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->nestedStates:[Lcom/google/android/apps/camera/statecharts/State;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 46
    invoke-static {v3}, Lcom/google/android/apps/camera/statecharts/History;->clearHistory(Lcom/google/android/apps/camera/statecharts/State;)V

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method

.method public final enter()V
    .locals 4

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->state:Lcom/google/android/apps/camera/statecharts/State;

    invoke-interface {v0}, Lcom/google/android/apps/camera/statecharts/State;->enter()V

    .line 29
    iget-object v1, p0, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->nestedStates:[Lcom/google/android/apps/camera/statecharts/State;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 30
    invoke-interface {v3}, Lcom/google/android/apps/camera/statecharts/State;->enter()V

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public final exit()V
    .locals 4

    .prologue
    .line 36
    iget-object v1, p0, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->nestedStates:[Lcom/google/android/apps/camera/statecharts/State;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 37
    invoke-interface {v3}, Lcom/google/android/apps/camera/statecharts/State;->exit()V

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->state:Lcom/google/android/apps/camera/statecharts/State;

    invoke-interface {v0}, Lcom/google/android/apps/camera/statecharts/State;->exit()V

    .line 40
    return-void
.end method

.method public final getState()Lcom/google/android/apps/camera/statecharts/State;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->state:Lcom/google/android/apps/camera/statecharts/State;

    return-object v0
.end method
