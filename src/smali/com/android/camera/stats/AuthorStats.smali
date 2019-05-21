.class public Lcom/android/camera/stats/AuthorStats;
.super Ljava/lang/Object;
.source "AuthorStats.java"


# instance fields
.field public googleCameraItems:I

.field public searchDays:F

.field public searchItems:I

.field public totalItems:F


# direct methods
.method public constructor <init>(FIIF)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/android/camera/stats/AuthorStats;->searchDays:F

    .line 22
    iput p2, p0, Lcom/android/camera/stats/AuthorStats;->searchItems:I

    .line 23
    iput p3, p0, Lcom/android/camera/stats/AuthorStats;->googleCameraItems:I

    .line 24
    iput p4, p0, Lcom/android/camera/stats/AuthorStats;->totalItems:F

    .line 25
    return-void
.end method
