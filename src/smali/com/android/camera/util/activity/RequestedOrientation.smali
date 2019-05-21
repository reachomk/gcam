.class public Lcom/android/camera/util/activity/RequestedOrientation;
.super Ljava/lang/Object;
.source "RequestedOrientation.java"


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 2011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2012
    iput-object p1, p0, Lcom/android/camera/util/activity/RequestedOrientation;->activity:Landroid/app/Activity;

    .line 2013
    return-void
.end method


# virtual methods
.method public setRequestedOrientation(I)V
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/camera/util/activity/RequestedOrientation;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1018
    return-void
.end method
