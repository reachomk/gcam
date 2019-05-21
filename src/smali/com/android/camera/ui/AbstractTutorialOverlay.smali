.class public abstract Lcom/android/camera/ui/AbstractTutorialOverlay;
.super Ljava/lang/Object;
.source "AbstractTutorialOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/AbstractTutorialOverlay$HideListener;,
        Lcom/android/camera/ui/AbstractTutorialOverlay$CompletedListener;
    }
.end annotation


# instance fields
.field private completedListener:Lcom/android/camera/ui/AbstractTutorialOverlay$CompletedListener;

.field private hideListener:Lcom/android/camera/ui/AbstractTutorialOverlay$HideListener;

.field private final layoutResId:I

.field private placeholderWrapper:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(ILcom/android/camera/ui/AbstractTutorialOverlay$CompletedListener;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/android/camera/ui/AbstractTutorialOverlay;->layoutResId:I

    .line 49
    iput-object p2, p0, Lcom/android/camera/ui/AbstractTutorialOverlay;->completedListener:Lcom/android/camera/ui/AbstractTutorialOverlay$CompletedListener;

    .line 50
    return-void
.end method


# virtual methods
.method public final closeAndComplete()V
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractTutorialOverlay;->removeOverlayAndHideWrapper()V

    .line 103
    iget-object v0, p0, Lcom/android/camera/ui/AbstractTutorialOverlay;->completedListener:Lcom/android/camera/ui/AbstractTutorialOverlay$CompletedListener;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/AbstractTutorialOverlay;->completedListener:Lcom/android/camera/ui/AbstractTutorialOverlay$CompletedListener;

    invoke-interface {v0}, Lcom/android/camera/ui/AbstractTutorialOverlay$CompletedListener;->onTutorialCompleted()V

    .line 106
    :cond_0
    return-void
.end method

.method protected abstract onInflated(Landroid/view/View;)V
.end method

.method public removeOverlayAndHideWrapper()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/AbstractTutorialOverlay;->placeholderWrapper:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/AbstractTutorialOverlay;->placeholderWrapper:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/AbstractTutorialOverlay;->placeholderWrapper:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/AbstractTutorialOverlay;->hideListener:Lcom/android/camera/ui/AbstractTutorialOverlay$HideListener;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/camera/ui/AbstractTutorialOverlay;->hideListener:Lcom/android/camera/ui/AbstractTutorialOverlay$HideListener;

    invoke-virtual {v0}, Lcom/android/camera/ui/AbstractTutorialOverlay$HideListener;->onHidden()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/AbstractTutorialOverlay;->hideListener:Lcom/android/camera/ui/AbstractTutorialOverlay$HideListener;

    .line 96
    :cond_1
    return-void
.end method

.method public final show(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Lcom/android/camera/ui/AbstractTutorialOverlay$HideListener;)V
    .locals 2

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/camera/ui/AbstractTutorialOverlay;->placeholderWrapper:Landroid/view/ViewGroup;

    .line 61
    iput-object p3, p0, Lcom/android/camera/ui/AbstractTutorialOverlay;->hideListener:Lcom/android/camera/ui/AbstractTutorialOverlay$HideListener;

    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/AbstractTutorialOverlay;->placeholderWrapper:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/camera/ui/AbstractTutorialOverlay;->placeholderWrapper:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/AbstractTutorialOverlay;->placeholderWrapper:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 67
    const v0, 0x7f04007a

    iget-object v1, p0, Lcom/android/camera/ui/AbstractTutorialOverlay;->placeholderWrapper:Landroid/view/ViewGroup;

    .line 70
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f11017f

    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 72
    iget v1, p0, Lcom/android/camera/ui/AbstractTutorialOverlay;->layoutResId:I

    invoke-virtual {p2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AbstractTutorialOverlay;->onInflated(Landroid/view/View;)V

    .line 73
    return-void
.end method
