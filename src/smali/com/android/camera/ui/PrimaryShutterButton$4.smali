.class final Lcom/android/camera/ui/PrimaryShutterButton$4;
.super Ljava/lang/Object;
.source "PrimaryShutterButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PrimaryShutterButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/PrimaryShutterButton;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PrimaryShutterButton;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/android/camera/ui/PrimaryShutterButton$4;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 456
    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton$4;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/camera/ui/PrimaryShutterButton;->access$1202(Lcom/android/camera/ui/PrimaryShutterButton;I)I

    .line 457
    return-void
.end method
