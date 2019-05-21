.class final Lcom/android/camera/ui/ShutterButtonHolder$6;
.super Ljava/lang/Object;
.source "ShutterButtonHolder.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ShutterButtonHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/ShutterButtonHolder;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ShutterButtonHolder;)V
    .locals 0

    .prologue
    .line 669
    iput-object p1, p0, Lcom/android/camera/ui/ShutterButtonHolder$6;->this$0:Lcom/android/camera/ui/ShutterButtonHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 672
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 673
    iget-object v1, p0, Lcom/android/camera/ui/ShutterButtonHolder$6;->this$0:Lcom/android/camera/ui/ShutterButtonHolder;

    invoke-static {v1}, Lcom/android/camera/ui/ShutterButtonHolder;->access$1200(Lcom/android/camera/ui/ShutterButtonHolder;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 674
    iget-object v1, p0, Lcom/android/camera/ui/ShutterButtonHolder$6;->this$0:Lcom/android/camera/ui/ShutterButtonHolder;

    invoke-static {v1}, Lcom/android/camera/ui/ShutterButtonHolder;->access$1200(Lcom/android/camera/ui/ShutterButtonHolder;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 676
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/ShutterButtonHolder$6;->this$0:Lcom/android/camera/ui/ShutterButtonHolder;

    invoke-static {v1}, Lcom/android/camera/ui/ShutterButtonHolder;->access$1300(Lcom/android/camera/ui/ShutterButtonHolder;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 677
    iget-object v1, p0, Lcom/android/camera/ui/ShutterButtonHolder$6;->this$0:Lcom/android/camera/ui/ShutterButtonHolder;

    invoke-static {v1}, Lcom/android/camera/ui/ShutterButtonHolder;->access$1300(Lcom/android/camera/ui/ShutterButtonHolder;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 679
    :cond_1
    return-void
.end method
