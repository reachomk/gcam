.class public Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "EvCompViewStatechart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart$Visible;,
        Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart$Hidden;,
        Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart$Disabled;
    }
.end annotation


# instance fields
.field private evCompView:Lcom/google/android/apps/camera/evcomp/EvCompView;

.field private evCompVisibleStatechart:Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;

.field private fadeInAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>([[S)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;)Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;->evCompVisibleStatechart:Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;)Lcom/google/android/apps/camera/evcomp/EvCompView;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;->evCompView:Lcom/google/android/apps/camera/evcomp/EvCompView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;)Landroid/animation/ObjectAnimator;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;->fadeInAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method


# virtual methods
.method public initialize(Lcom/google/android/apps/camera/evcomp/EvCompView;Landroid/animation/ObjectAnimator;Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;->evCompView:Lcom/google/android/apps/camera/evcomp/EvCompView;

    .line 28
    iput-object p2, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;->fadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 29
    iput-object p3, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;->evCompVisibleStatechart:Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;

    .line 30
    return-void
.end method
