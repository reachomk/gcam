.class public Lcom/google/android/apps/camera/uiutils/FadeRotationFrameLayout;
.super Landroid/widget/FrameLayout;
.source "FadeRotationFrameLayout.java"


# instance fields
.field private final orientationChangeFadeIn:Lcom/google/android/apps/camera/uiutils/OrientationChangeFadeIn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1033
    new-instance v0, Lcom/google/android/apps/camera/uiutils/OrientationChangeFadeIn;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/uiutils/OrientationChangeFadeIn;-><init>(Landroid/view/View;)V

    .line 20
    iput-object v0, p0, Lcom/google/android/apps/camera/uiutils/FadeRotationFrameLayout;->orientationChangeFadeIn:Lcom/google/android/apps/camera/uiutils/OrientationChangeFadeIn;

    .line 21
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/apps/camera/uiutils/OrientationChangeFadeIn;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p2, p0, Lcom/google/android/apps/camera/uiutils/FadeRotationFrameLayout;->orientationChangeFadeIn:Lcom/google/android/apps/camera/uiutils/OrientationChangeFadeIn;

    .line 28
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 39
    iget-object v0, p0, Lcom/google/android/apps/camera/uiutils/FadeRotationFrameLayout;->orientationChangeFadeIn:Lcom/google/android/apps/camera/uiutils/OrientationChangeFadeIn;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/uiutils/OrientationChangeFadeIn;->onAttachedToWindow()V

    .line 40
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 45
    iget-object v0, p0, Lcom/google/android/apps/camera/uiutils/FadeRotationFrameLayout;->orientationChangeFadeIn:Lcom/google/android/apps/camera/uiutils/OrientationChangeFadeIn;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/uiutils/OrientationChangeFadeIn;->onConfigurationChanged()V

    .line 46
    return-void
.end method
