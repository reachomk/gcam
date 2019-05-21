.class public final Lcom/google/android/apps/camera/aaa/AfStateTransition;
.super Ljava/lang/Object;
.source "AfStateTransition.java"


# instance fields
.field public final curState:Lcom/google/android/apps/camera/aaa/AfState;

.field public final prevState:Lcom/google/android/apps/camera/aaa/AfState;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/aaa/AfState;Lcom/google/android/apps/camera/aaa/AfState;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/google/android/apps/camera/aaa/AfStateTransition;->prevState:Lcom/google/android/apps/camera/aaa/AfState;

    .line 13
    iput-object p2, p0, Lcom/google/android/apps/camera/aaa/AfStateTransition;->curState:Lcom/google/android/apps/camera/aaa/AfState;

    .line 14
    return-void
.end method


# virtual methods
.method public final hasControlAfStateChanged()Z
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/apps/camera/aaa/AfStateTransition;->curState:Lcom/google/android/apps/camera/aaa/AfState;

    iget-object v0, v0, Lcom/google/android/apps/camera/aaa/AfState;->controlAfState:Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;

    iget-object v1, p0, Lcom/google/android/apps/camera/aaa/AfStateTransition;->prevState:Lcom/google/android/apps/camera/aaa/AfState;

    iget-object v1, v1, Lcom/google/android/apps/camera/aaa/AfState;->controlAfState:Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
