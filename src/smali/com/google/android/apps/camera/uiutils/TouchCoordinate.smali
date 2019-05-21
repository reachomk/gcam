.class public final Lcom/google/android/apps/camera/uiutils/TouchCoordinate;
.super Ljava/lang/Object;
.source "TouchCoordinate.java"


# instance fields
.field private maxX:F

.field private maxY:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/google/android/apps/camera/uiutils/TouchCoordinate;->x:F

    .line 21
    iput p2, p0, Lcom/google/android/apps/camera/uiutils/TouchCoordinate;->y:F

    .line 22
    iput p3, p0, Lcom/google/android/apps/camera/uiutils/TouchCoordinate;->maxX:F

    .line 23
    iput p4, p0, Lcom/google/android/apps/camera/uiutils/TouchCoordinate;->maxY:F

    .line 24
    return-void
.end method


# virtual methods
.method public final getMaxX()F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/google/android/apps/camera/uiutils/TouchCoordinate;->maxX:F

    return v0
.end method

.method public final getMaxY()F
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/google/android/apps/camera/uiutils/TouchCoordinate;->maxY:F

    return v0
.end method

.method public final getX()F
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/google/android/apps/camera/uiutils/TouchCoordinate;->x:F

    return v0
.end method

.method public final getY()F
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/google/android/apps/camera/uiutils/TouchCoordinate;->y:F

    return v0
.end method
