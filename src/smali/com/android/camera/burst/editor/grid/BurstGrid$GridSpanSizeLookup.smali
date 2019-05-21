.class final Lcom/android/camera/burst/editor/grid/BurstGrid$GridSpanSizeLookup;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "BurstGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/editor/grid/BurstGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GridSpanSizeLookup"
.end annotation


# instance fields
.field private final gridWidth:I

.field private synthetic this$0:Lcom/android/camera/burst/editor/grid/BurstGrid;


# direct methods
.method public constructor <init>(Lcom/android/camera/burst/editor/grid/BurstGrid;I)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/camera/burst/editor/grid/BurstGrid$GridSpanSizeLookup;->this$0:Lcom/android/camera/burst/editor/grid/BurstGrid;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    .line 186
    iput p2, p0, Lcom/android/camera/burst/editor/grid/BurstGrid$GridSpanSizeLookup;->gridWidth:I

    .line 187
    return-void
.end method


# virtual methods
.method public final getSpanSize(I)I
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/camera/burst/editor/grid/BurstGrid$GridSpanSizeLookup;->this$0:Lcom/android/camera/burst/editor/grid/BurstGrid;

    invoke-static {v0}, Lcom/android/camera/burst/editor/grid/BurstGrid;->access$000(Lcom/android/camera/burst/editor/grid/BurstGrid;)Lcom/android/camera/burst/editor/grid/GridFramesImageViewAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/burst/editor/grid/GridFramesImageViewAdapter;->isFullWidth(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/burst/editor/grid/BurstGrid$GridSpanSizeLookup;->gridWidth:I

    .line 193
    :goto_0
    return v0

    .line 192
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
