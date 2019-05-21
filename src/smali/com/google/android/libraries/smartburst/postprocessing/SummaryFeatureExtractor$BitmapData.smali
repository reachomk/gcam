.class final Lcom/google/android/libraries/smartburst/postprocessing/SummaryFeatureExtractor$BitmapData;
.super Ljava/lang/Object;
.source "SummaryFeatureExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/postprocessing/SummaryFeatureExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BitmapData"
.end annotation


# instance fields
.field public final bitmapHandle:Lcom/google/android/libraries/smartburst/media/BitmapHandle;

.field public final features:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/Feature;",
            ">;"
        }
    .end annotation
.end field

.field public final timestampNs:J


# direct methods
.method public constructor <init>(JLcom/google/android/libraries/smartburst/media/BitmapHandle;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/libraries/smartburst/media/BitmapHandle;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/Feature;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-wide p1, p0, Lcom/google/android/libraries/smartburst/postprocessing/SummaryFeatureExtractor$BitmapData;->timestampNs:J

    .line 117
    iput-object p3, p0, Lcom/google/android/libraries/smartburst/postprocessing/SummaryFeatureExtractor$BitmapData;->bitmapHandle:Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    .line 118
    iput-object p4, p0, Lcom/google/android/libraries/smartburst/postprocessing/SummaryFeatureExtractor$BitmapData;->features:Ljava/util/List;

    .line 119
    return-void
.end method
