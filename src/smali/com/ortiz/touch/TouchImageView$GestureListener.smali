.class final Lcom/ortiz/touch/TouchImageView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ortiz/touch/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GestureListener"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/ortiz/touch/TouchImageView;


# direct methods
.method private constructor <init>(Lcom/ortiz/touch/TouchImageView;)V
    .locals 0

    .prologue
    .line 786
    iput-object p1, p0, Lcom/ortiz/touch/TouchImageView$GestureListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ortiz/touch/TouchImageView;B)V
    .locals 0

    .prologue
    .line 786
    invoke-direct {p0, p1}, Lcom/ortiz/touch/TouchImageView$GestureListener;-><init>(Lcom/ortiz/touch/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 817
    .line 818
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView$GestureListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    .line 821
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView$GestureListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    invoke-static {v0}, Lcom/ortiz/touch/TouchImageView;->access$600$51666RRD5TNN4T39F8NN8RRLCDK2UL3FELHMGIBDC5JMALJ9CLRJMAACCDNMQBRFE9Q6IUHFEHNNAOR85TA6UTB3D14MQOB7CLB6IPBN4H9N8OBKCKTG____(Lcom/ortiz/touch/TouchImageView;)I

    move-result v0

    sget v1, Lcom/ortiz/touch/TouchImageView$State;->NONE$9HHMUR9FDTP78QBQ5TQ6UTB3D0NL8RRLCDK4IRB1CTILCQB5ESI56T31EHIJM___:I

    if-ne v0, v1, :cond_0

    .line 822
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView$GestureListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    invoke-static {v0}, Lcom/ortiz/touch/TouchImageView;->access$700(Lcom/ortiz/touch/TouchImageView;)F

    move-result v0

    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView$GestureListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    invoke-static {v1}, Lcom/ortiz/touch/TouchImageView;->access$800(Lcom/ortiz/touch/TouchImageView;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView$GestureListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    invoke-static {v0}, Lcom/ortiz/touch/TouchImageView;->access$900(Lcom/ortiz/touch/TouchImageView;)F

    move-result v2

    .line 823
    :goto_0
    new-instance v0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;

    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView$GestureListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct/range {v0 .. v5}, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;-><init>(Lcom/ortiz/touch/TouchImageView;FFFZ)V

    .line 824
    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView$GestureListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    invoke-static {v1, v0}, Lcom/ortiz/touch/TouchImageView;->access$500(Lcom/ortiz/touch/TouchImageView;Ljava/lang/Runnable;)V

    .line 825
    const/4 v5, 0x1

    .line 827
    :cond_0
    return v5

    .line 822
    :cond_1
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView$GestureListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    invoke-static {v0}, Lcom/ortiz/touch/TouchImageView;->access$800(Lcom/ortiz/touch/TouchImageView;)F

    move-result v2

    goto :goto_0
.end method

.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView$GestureListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    .line 835
    const/4 v0, 0x0

    return v0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    .prologue
    .line 803
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView$GestureListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    invoke-static {v0}, Lcom/ortiz/touch/TouchImageView;->access$400(Lcom/ortiz/touch/TouchImageView;)Lcom/ortiz/touch/TouchImageView$Fling;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView$GestureListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    invoke-static {v0}, Lcom/ortiz/touch/TouchImageView;->access$400(Lcom/ortiz/touch/TouchImageView;)Lcom/ortiz/touch/TouchImageView$Fling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ortiz/touch/TouchImageView$Fling;->cancelFling()V

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView$GestureListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    new-instance v1, Lcom/ortiz/touch/TouchImageView$Fling;

    iget-object v2, p0, Lcom/ortiz/touch/TouchImageView$GestureListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    float-to-int v3, p3

    float-to-int v4, p4

    invoke-direct {v1, v2, v3, v4}, Lcom/ortiz/touch/TouchImageView$Fling;-><init>(Lcom/ortiz/touch/TouchImageView;II)V

    invoke-static {v0, v1}, Lcom/ortiz/touch/TouchImageView;->access$402(Lcom/ortiz/touch/TouchImageView;Lcom/ortiz/touch/TouchImageView$Fling;)Lcom/ortiz/touch/TouchImageView$Fling;

    .line 811
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView$GestureListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView$GestureListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    invoke-static {v1}, Lcom/ortiz/touch/TouchImageView;->access$400(Lcom/ortiz/touch/TouchImageView;)Lcom/ortiz/touch/TouchImageView$Fling;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ortiz/touch/TouchImageView;->access$500(Lcom/ortiz/touch/TouchImageView;Ljava/lang/Runnable;)V

    .line 812
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView$GestureListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    invoke-virtual {v0}, Lcom/ortiz/touch/TouchImageView;->performLongClick()Z

    .line 799
    return-void
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView$GestureListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    .line 793
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView$GestureListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    invoke-virtual {v0}, Lcom/ortiz/touch/TouchImageView;->performClick()Z

    move-result v0

    return v0
.end method
