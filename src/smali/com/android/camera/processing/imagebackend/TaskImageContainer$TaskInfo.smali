.class public final Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
.super Ljava/lang/Object;
.source "TaskImageContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/processing/imagebackend/TaskImageContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;
    }
.end annotation


# instance fields
.field public final contentId:J

.field public final destination$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEO_:I

.field public final result:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;


# direct methods
.method constructor <init>(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;I)V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-wide p1, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->contentId:J

    .line 112
    iput-object p4, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->result:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    .line 113
    iput p5, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->destination$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEO_:I

    .line 114
    return-void
.end method
