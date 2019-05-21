.class public Lcom/android/camera/module/imageintent/event/EventOnSurfaceTextureAvailable;
.super Ljava/lang/Object;
.source "EventOnSurfaceTextureAvailable.java"


# instance fields
.field private final surfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/camera/module/imageintent/event/EventOnSurfaceTextureAvailable;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 10
    return-void
.end method


# virtual methods
.method public final getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/module/imageintent/event/EventOnSurfaceTextureAvailable;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method
