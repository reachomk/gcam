.class Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart$FadingIn;
.super Lcom/google/android/apps/camera/optionsbar/view/OptionsBarVisibilityState;
.source "OptionsBarStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FadingIn"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarVisibilityState;-><init>()V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public onAnimationComplete()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarVisibilityState;->onAnimationComplete()V

    .line 102
    return-void
.end method
