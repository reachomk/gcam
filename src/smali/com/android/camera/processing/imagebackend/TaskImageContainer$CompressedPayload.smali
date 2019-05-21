.class public final Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;
.super Ljava/lang/Object;
.source "TaskImageContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/processing/imagebackend/TaskImageContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompressedPayload"
.end annotation


# instance fields
.field public final data:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;->data:[B

    .line 41
    return-void
.end method
