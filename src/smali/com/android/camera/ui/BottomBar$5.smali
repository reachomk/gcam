.class final Lcom/android/camera/ui/BottomBar$5;
.super Ljava/lang/Object;
.source "BottomBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/BottomBar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/BottomBar;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/BottomBar;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/camera/ui/BottomBar$5;->this$0:Lcom/android/camera/ui/BottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 223
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/android/camera/ui/BottomBar$5;->this$0:Lcom/android/camera/ui/BottomBar;

    invoke-static {v0}, Lcom/android/camera/ui/BottomBar;->access$600(Lcom/android/camera/ui/BottomBar;)V

    .line 234
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 225
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x3

    .line 226
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/BottomBar$5;->this$0:Lcom/android/camera/ui/BottomBar;

    invoke-static {v0}, Lcom/android/camera/ui/BottomBar;->access$700(Lcom/android/camera/ui/BottomBar;)V

    goto :goto_0

    .line 228
    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/camera/ui/BottomBar$5;->this$0:Lcom/android/camera/ui/BottomBar;

    invoke-static {v0}, Lcom/android/camera/ui/BottomBar;->access$500(Lcom/android/camera/ui/BottomBar;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/BottomBar$5;->this$0:Lcom/android/camera/ui/BottomBar;

    invoke-virtual {v1}, Lcom/android/camera/ui/BottomBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/BottomBar$5;->this$0:Lcom/android/camera/ui/BottomBar;

    invoke-virtual {v2}, Lcom/android/camera/ui/BottomBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 230
    iget-object v0, p0, Lcom/android/camera/ui/BottomBar$5;->this$0:Lcom/android/camera/ui/BottomBar;

    invoke-static {v0}, Lcom/android/camera/ui/BottomBar;->access$500(Lcom/android/camera/ui/BottomBar;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/camera/ui/BottomBar$5;->this$0:Lcom/android/camera/ui/BottomBar;

    invoke-static {v0}, Lcom/android/camera/ui/BottomBar;->access$700(Lcom/android/camera/ui/BottomBar;)V

    goto :goto_0
.end method
