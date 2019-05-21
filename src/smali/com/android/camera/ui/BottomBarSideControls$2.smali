.class final Lcom/android/camera/ui/BottomBarSideControls$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BottomBarSideControls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/BottomBarSideControls;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/BottomBarSideControls;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/BottomBarSideControls;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/camera/ui/BottomBarSideControls$2;->this$0:Lcom/android/camera/ui/BottomBarSideControls;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls$2;->this$0:Lcom/android/camera/ui/BottomBarSideControls;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BottomBarSideControls;->setVisibility(I)V

    .line 196
    return-void
.end method
