.class final Lcom/android/camera/burst/editor/grid/GridFrameViewHolder$1;
.super Ljava/lang/Object;
.source "GridFrameViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;-><init>(Lcom/android/camera/burst/editor/grid/GridFramesImageViewAdapter;Landroid/widget/FrameLayout;Lcom/android/camera/burst/editor/grid/BurstGrid$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;

.field private synthetic val$gridListener:Lcom/android/camera/burst/editor/grid/BurstGrid$Listener;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;Lcom/android/camera/burst/editor/grid/BurstGrid$Listener;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder$1;->this$0:Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;

    iput-object p2, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder$1;->val$gridListener:Lcom/android/camera/burst/editor/grid/BurstGrid$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder$1;->this$0:Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;

    invoke-static {v0}, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->access$000$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNMAP39EHNN4BR7E9KM8BQ7E9KM8HJIC5MMALJ9CLRKGRRCCHIN4EP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5TIM8QBKDTP2UPRID5I2UKR5DHIM6T39DTN46RREEHP6UR3CCLP3M___(Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;)Lcom/android/camera/module/video2/VideoModeModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/video2/VideoModeModule;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder$1;->this$0:Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;

    invoke-static {v0}, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->access$000$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNMAP39EHNN4BR7E9KM8BQ7E9KM8HJIC5MMALJ9CLRKGRRCCHIN4EP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5TIM8QBKDTP2UPRID5I2UKR5DHIM6T39DTN46RREEHP6UR3CCLP3M___(Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;)Lcom/android/camera/module/video2/VideoModeModule;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder$1;->this$0:Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;

    invoke-virtual {v1}, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video2/VideoModeModule;->toggleSelection(Landroid/net/Uri;)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder$1;->val$gridListener:Lcom/android/camera/burst/editor/grid/BurstGrid$Listener;

    iget-object v1, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder$1;->this$0:Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;

    invoke-interface {v0, v1}, Lcom/android/camera/burst/editor/grid/BurstGrid$Listener;->onElementClicked(Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;)V

    goto :goto_0
.end method
