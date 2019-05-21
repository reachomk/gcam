.class final Lcom/android/camera/data/VideoItem$VideoViewHolder;
.super Ljava/lang/Object;
.source "VideoItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/VideoItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VideoViewHolder"
.end annotation


# instance fields
.field private final playButton:Landroid/widget/ImageView;

.field private final videoView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/camera/data/VideoItem$VideoViewHolder;->videoView:Landroid/widget/ImageView;

    .line 35
    iput-object p2, p0, Lcom/android/camera/data/VideoItem$VideoViewHolder;->playButton:Landroid/widget/ImageView;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/data/VideoItem$VideoViewHolder;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/data/VideoItem$VideoViewHolder;->playButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/data/VideoItem$VideoViewHolder;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/data/VideoItem$VideoViewHolder;->videoView:Landroid/widget/ImageView;

    return-object v0
.end method
