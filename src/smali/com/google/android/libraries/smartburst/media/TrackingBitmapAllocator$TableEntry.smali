.class final Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TableEntry;
.super Ljava/lang/Object;
.source "TrackingBitmapAllocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TableEntry"
.end annotation


# instance fields
.field public final allocSize:I

.field public final trackedBitmap:Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TrackedBitmapHandle;

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TrackedBitmapHandle;)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput p1, p0, Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TableEntry;->allocSize:I

    .line 159
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TableEntry;->type:Ljava/lang/String;

    .line 160
    iput-object p3, p0, Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TableEntry;->trackedBitmap:Lcom/google/android/libraries/smartburst/media/TrackingBitmapAllocator$TrackedBitmapHandle;

    .line 161
    return-void
.end method
