.class public Lcom/android/camera/module/imageintent/event/EventPictureCompressed;
.super Ljava/lang/Object;
.source "EventPictureCompressed.java"


# instance fields
.field private final orientation:I

.field private final pictureData:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/android/camera/module/imageintent/event/EventPictureCompressed;->pictureData:[B

    .line 9
    iput p2, p0, Lcom/android/camera/module/imageintent/event/EventPictureCompressed;->orientation:I

    .line 10
    return-void
.end method


# virtual methods
.method public final getOrientation()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/android/camera/module/imageintent/event/EventPictureCompressed;->orientation:I

    return v0
.end method

.method public final getPictureData()[B
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/module/imageintent/event/EventPictureCompressed;->pictureData:[B

    return-object v0
.end method
