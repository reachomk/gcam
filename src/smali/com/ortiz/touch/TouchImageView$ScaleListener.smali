.class final Lcom/ortiz/touch/TouchImageView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ortiz/touch/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScaleListener"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/ortiz/touch/TouchImageView;


# direct methods
.method private constructor <init>(Lcom/ortiz/touch/TouchImageView;)V
    .locals 0

    .prologue
    .line 917
    iput-object p1, p0, Lcom/ortiz/touch/TouchImageView$ScaleListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ortiz/touch/TouchImageView;B)V
    .locals 0

    .prologue
    .line 917
    invoke-direct {p0, p1}, Lcom/ortiz/touch/TouchImageView$ScaleListener;-><init>(Lcom/ortiz/touch/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 926
    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView$ScaleListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    float-to-double v2, v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v5

    invoke-static/range {v1 .. v6}, Lcom/ortiz/touch/TouchImageView;->access$2200(Lcom/ortiz/touch/TouchImageView;DFFZ)V

    .line 934
    return v6
.end method

.method public final onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .prologue
    .line 920
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView$ScaleListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    sget v1, Lcom/ortiz/touch/TouchImageView$State;->ZOOM$9HHMUR9FDTP78QBQ5TQ6UTB3D0NL8RRLCDK4IRB1CTILCQB5ESI56T31EHIJM___:I

    invoke-static {v0, v1}, Lcom/ortiz/touch/TouchImageView;->access$1200$51666RRD5TNN4T39F8NN8RRLCDK2UL3FELHMGIBDC5JMALJ9CLRJMJ33DTMIURRIEHKNKBRKDTQM6Q1FAHNNAOR895MM2PR5APKMATP4ADQ62T357CKLC___(Lcom/ortiz/touch/TouchImageView;I)V

    .line 921
    const/4 v0, 0x1

    return v0
.end method

.method public final onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 939
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 940
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView$ScaleListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    sget v1, Lcom/ortiz/touch/TouchImageView$State;->NONE$9HHMUR9FDTP78QBQ5TQ6UTB3D0NL8RRLCDK4IRB1CTILCQB5ESI56T31EHIJM___:I

    invoke-static {v0, v1}, Lcom/ortiz/touch/TouchImageView;->access$1200$51666RRD5TNN4T39F8NN8RRLCDK2UL3FELHMGIBDC5JMALJ9CLRJMJ33DTMIURRIEHKNKBRKDTQM6Q1FAHNNAOR895MM2PR5APKMATP4ADQ62T357CKLC___(Lcom/ortiz/touch/TouchImageView;I)V

    .line 941
    const/4 v0, 0x0

    .line 942
    const/4 v2, 0x0

    .line 943
    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView$ScaleListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    invoke-static {v1}, Lcom/ortiz/touch/TouchImageView;->access$700(Lcom/ortiz/touch/TouchImageView;)F

    move-result v1

    iget-object v3, p0, Lcom/ortiz/touch/TouchImageView$ScaleListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    invoke-static {v3}, Lcom/ortiz/touch/TouchImageView;->access$900(Lcom/ortiz/touch/TouchImageView;)F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    .line 944
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView$ScaleListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    invoke-static {v0}, Lcom/ortiz/touch/TouchImageView;->access$900(Lcom/ortiz/touch/TouchImageView;)F

    move-result v2

    move v0, v5

    .line 952
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 953
    new-instance v0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;

    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView$ScaleListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    iget-object v3, p0, Lcom/ortiz/touch/TouchImageView$ScaleListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    .line 954
    invoke-static {v3}, Lcom/ortiz/touch/TouchImageView;->access$1300(Lcom/ortiz/touch/TouchImageView;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/ortiz/touch/TouchImageView$ScaleListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    invoke-static {v4}, Lcom/ortiz/touch/TouchImageView;->access$1600(Lcom/ortiz/touch/TouchImageView;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-direct/range {v0 .. v5}, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;-><init>(Lcom/ortiz/touch/TouchImageView;FFFZ)V

    .line 955
    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView$ScaleListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    invoke-static {v1, v0}, Lcom/ortiz/touch/TouchImageView;->access$500(Lcom/ortiz/touch/TouchImageView;Ljava/lang/Runnable;)V

    .line 957
    :cond_1
    return-void

    .line 947
    :cond_2
    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView$ScaleListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    invoke-static {v1}, Lcom/ortiz/touch/TouchImageView;->access$700(Lcom/ortiz/touch/TouchImageView;)F

    move-result v1

    iget-object v3, p0, Lcom/ortiz/touch/TouchImageView$ScaleListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    invoke-static {v3}, Lcom/ortiz/touch/TouchImageView;->access$800(Lcom/ortiz/touch/TouchImageView;)F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    .line 948
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView$ScaleListener;->this$0:Lcom/ortiz/touch/TouchImageView;

    invoke-static {v0}, Lcom/ortiz/touch/TouchImageView;->access$800(Lcom/ortiz/touch/TouchImageView;)F

    move-result v2

    move v0, v5

    .line 949
    goto :goto_0
.end method
