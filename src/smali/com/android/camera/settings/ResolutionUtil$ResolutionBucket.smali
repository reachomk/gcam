.class final Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;
.super Ljava/lang/Object;
.source "ResolutionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/settings/ResolutionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResolutionBucket"
.end annotation


# instance fields
.field public aspectRatio:Ljava/lang/Float;

.field public maxPixels:Ljava/lang/Integer;

.field public sizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;->sizes:Ljava/util/List;

    .line 65
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;->maxPixels:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Lcom/android/camera/util/Size;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    iget-object v0, p0, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;->sizes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;->sizes:Ljava/util/List;

    new-instance v1, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket$1;

    invoke-direct {v1}, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 84
    iget-object v0, p0, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;->sizes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/Size;

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->width()I

    move-result v1

    iget-object v0, p0, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;->sizes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/Size;

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->height()I

    move-result v0

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;->maxPixels:Ljava/lang/Integer;

    .line 85
    return-void
.end method
