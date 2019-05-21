.class public final Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;
.super Ljava/lang/Enum;
.source "TaskImageContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Destination"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TO74RR3CLPN6QBECSNMIRB1CTIM4OB3DDIMSP1FAHGN6QQ9DLGMEPA3DTN78OB9DPIN492KC5PMMIBECPNI8H35EDQ6IRJ1EHKMURHR:[I

.field public static final enum FAST_THUMBNAIL$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEO_:I

.field public static final enum FINAL_IMAGE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEO_:I

.field public static final enum INTERMEDIATE_THUMBNAIL$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEO_:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 96
    sput v3, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->FAST_THUMBNAIL$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEO_:I

    .line 97
    sput v4, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->INTERMEDIATE_THUMBNAIL$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEO_:I

    .line 98
    sput v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->FINAL_IMAGE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEO_:I

    .line 95
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->FAST_THUMBNAIL$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEO_:I

    aput v2, v0, v1

    sget v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->INTERMEDIATE_THUMBNAIL$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEO_:I

    aput v1, v0, v3

    sget v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->FINAL_IMAGE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEO_:I

    aput v1, v0, v4

    sput-object v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->$VALUES$BD666RRD5TGMSP3IDTKM8BR3C5MMASJ15TO74RR3CLPN6QBECSNMIRB1CTIM4OB3DDIMSP1FAHGN6QQ9DLGMEPA3DTN78OB9DPIN492KC5PMMIBECPNI8H35EDQ6IRJ1EHKMURHR:[I

    return-void
.end method
