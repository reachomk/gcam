.class final Lcom/android/camera/ui/PrimaryShutterButton$25;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PrimaryShutterButton.java"


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
    .line 1101
    iput-object p1, p0, Lcom/android/camera/ui/PrimaryShutterButton$25;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$25;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-static {v0}, Lcom/android/camera/ui/PrimaryShutterButton;->access$3500(Lcom/android/camera/ui/PrimaryShutterButton;)Landroid/graphics/Paint;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1112
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$25;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-static {v0}, Lcom/android/camera/ui/PrimaryShutterButton;->access$3500(Lcom/android/camera/ui/PrimaryShutterButton;)Landroid/graphics/Paint;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1106
    return-void
.end method
