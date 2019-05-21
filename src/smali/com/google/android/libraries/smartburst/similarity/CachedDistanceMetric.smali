.class public final Lcom/google/android/libraries/smartburst/similarity/CachedDistanceMetric;
.super Ljava/lang/Object;
.source "CachedDistanceMetric.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/similarity/FeatureRowDistanceMetric;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/similarity/CachedDistanceMetric$RowPair;
    }
.end annotation


# instance fields
.field private final mCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Lcom/google/android/libraries/smartburst/similarity/CachedDistanceMetric$RowPair;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsSymmetric:Z

.field private final mMetric:Lcom/google/android/libraries/smartburst/similarity/FeatureRowDistanceMetric;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/similarity/FeatureRowDistanceMetric;IZ)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/similarity/CachedDistanceMetric;->mMetric:Lcom/google/android/libraries/smartburst/similarity/FeatureRowDistanceMetric;

    .line 78
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, p2}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/similarity/CachedDistanceMetric;->mCache:Landroid/util/LruCache;

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/similarity/CachedDistanceMetric;->mIsSymmetric:Z

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/smartburst/similarity/CachedDistanceMetric;)Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/similarity/CachedDistanceMetric;->mIsSymmetric:Z

    return v0
.end method


# virtual methods
.method public final distanceBetween(Lcom/google/android/libraries/smartburst/buffers/FeatureRow;Lcom/google/android/libraries/smartburst/buffers/FeatureRow;)F
    .locals 3

    .prologue
    .line 84
    new-instance v1, Lcom/google/android/libraries/smartburst/similarity/CachedDistanceMetric$RowPair;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/libraries/smartburst/similarity/CachedDistanceMetric$RowPair;-><init>(Lcom/google/android/libraries/smartburst/similarity/CachedDistanceMetric;Lcom/google/android/libraries/smartburst/buffers/FeatureRow;Lcom/google/android/libraries/smartburst/buffers/FeatureRow;)V

    .line 85
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/similarity/CachedDistanceMetric;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 86
    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/similarity/CachedDistanceMetric;->mMetric:Lcom/google/android/libraries/smartburst/similarity/FeatureRowDistanceMetric;

    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/smartburst/similarity/FeatureRowDistanceMetric;->distanceBetween(Lcom/google/android/libraries/smartburst/buffers/FeatureRow;Lcom/google/android/libraries/smartburst/buffers/FeatureRow;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 88
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/similarity/CachedDistanceMetric;->mCache:Landroid/util/LruCache;

    invoke-virtual {v2, v1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method
