.class public Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerLayout;
.super Landroid/support/v4/widget/DrawerLayout;
.source "ToyboxDrawerLayout.java"


# instance fields
.field private fadeInAnimation:Lcom/google/android/apps/camera/uiutils/OrientationChangeFadeIn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v0, Lcom/google/android/apps/camera/uiutils/OrientationChangeFadeIn;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/uiutils/OrientationChangeFadeIn;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerLayout;->fadeInAnimation:Lcom/google/android/apps/camera/uiutils/OrientationChangeFadeIn;

    .line 20
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Landroid/support/v4/widget/DrawerLayout;->onAttachedToWindow()V

    .line 25
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerLayout;->fadeInAnimation:Lcom/google/android/apps/camera/uiutils/OrientationChangeFadeIn;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/uiutils/OrientationChangeFadeIn;->onAttachedToWindow()V

    .line 26
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 31
    iget-object v0, p0, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerLayout;->fadeInAnimation:Lcom/google/android/apps/camera/uiutils/OrientationChangeFadeIn;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/uiutils/OrientationChangeFadeIn;->onConfigurationChanged()V

    .line 32
    return-void
.end method
