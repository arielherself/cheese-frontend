export type Insight = {
  id: number
  content: string
  author: {
    id: number
    username: string
    nickname: string
    avatar: string
    intro: string
  }
  created_at: number
  updated_at: number
  is_like: boolean
  like_count: number
  comment_count: number
  view_count: number
  medias: InsightMedia[]
}

export type InsightMedia = {
  id: number
  type: string
  url: string
  meta: {
    width: number
    height: number
    size: number
    thumbnail: string
  }
}
