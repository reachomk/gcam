.class public final Lcom/google/android/apps/lightcycle/storage/PhotoMetadata;
.super Ljava/lang/Object;
.source "PhotoMetadata.java"


# instance fields
.field public location:Landroid/location/Location;

.field public poseHeading:I

.field public timestamp:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Landroid/location/Location;I)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lcom/google/android/apps/lightcycle/storage/PhotoMetadata;->timestamp:J

    .line 23
    iput-object p4, p0, Lcom/google/android/apps/lightcycle/storage/PhotoMetadata;->location:Landroid/location/Location;

    .line 24
    iput p5, p0, Lcom/google/android/apps/lightcycle/storage/PhotoMetadata;->poseHeading:I

    .line 25
    return-void
.end method
