.class public Lcom/android/camera/module/imageintent/event/EventZoomRatioChanged;
.super Ljava/lang/Object;
.source "EventZoomRatioChanged.java"


# instance fields
.field private final zoomRatio:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/android/camera/module/imageintent/event/EventZoomRatioChanged;->zoomRatio:F

    .line 8
    return-void
.end method


# virtual methods
.method public final getZoomRatio()F
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/android/camera/module/imageintent/event/EventZoomRatioChanged;->zoomRatio:F

    return v0
.end method
