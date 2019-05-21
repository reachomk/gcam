.class public final Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;
.super Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;
.source "ActivityLifecycle.java"


# instance fields
.field private onAttachedToWindow:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;

.field private onPostCreate:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;

.field private onPostResume:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;

.field private onRestoreInstanceState:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle$4;

    invoke-direct {v0}, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle$4;-><init>()V

    .line 103
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->addLifecycleEvent(Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;)Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->onAttachedToWindow:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;

    .line 112
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->onRestoreInstanceState:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->removeLifecycleEvent(Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;)V

    .line 97
    iget-object v0, p0, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->onPostCreate:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->removeLifecycleEvent(Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;)V

    .line 98
    invoke-super {p0}, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;->onDestroy()V

    .line 99
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->onAttachedToWindow:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->removeLifecycleEvent(Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;)V

    .line 117
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->observers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->observers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->onPostResume:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->removeLifecycleEvent(Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;)V

    .line 91
    invoke-super {p0}, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;->onPause()V

    .line 92
    return-void
.end method

.method public final onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle$1;-><init>(Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->addLifecycleEvent(Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;)Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->onPostCreate:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;

    .line 58
    return-void
.end method

.method public final onPostResume()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle$3;

    invoke-direct {v0}, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle$3;-><init>()V

    .line 77
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->addLifecycleEvent(Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;)Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->onPostResume:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;

    .line 86
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle$2;-><init>(Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->addLifecycleEvent(Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;)Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->onRestoreInstanceState:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;

    .line 73
    return-void
.end method
